@interface ETMessage
+ (id)unarchive:(id)a3;
- (CGPoint)scenePointFromNormalizedPoint:(CGPoint)a3 inScene:(id)a4;
- (ETMessage)init;
- (ETMessage)initWithCoder:(id)a3;
- (ETMessage)parentMessage;
- (ETMessageDelegate)delegate;
- (ETMessageTimeSource)timeSource;
- (id)archive;
- (id)description;
- (unsigned)messageType;
- (void)childMessageDidDelayWisp:(id)a3;
- (void)displayInScene:(id)a3;
- (void)stopPlaying;
- (void)wispChildren;
@end

@implementation ETMessage

- (unsigned)messageType
{
  v2 = objc_opt_class();

  return [v2 messageType];
}

- (ETMessage)init
{
  v9.receiver = self;
  v9.super_class = ETMessage;
  v2 = [(ETMessage *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    color = v2->_color;
    v2->_color = v3;

    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v6;

    v2->_timeCreated = CFAbsoluteTimeGetCurrent();
  }

  return v2;
}

+ (id)unarchive:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[ETPHeader alloc] initWithData:v3];
  v5 = v4;
  if (!v4 || ![(ETPHeader *)v4 hasMessageType])
  {
    v10 = 0;
    goto LABEL_41;
  }

  v6 = [(ETPHeader *)v5 messageData];
  v7 = [(ETPHeader *)v5 messageType];
  v8 = v7;
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        v9 = ETReadReceiptMessage;
      }

      else
      {
        v9 = ETVideoMessage;
      }

      goto LABEL_21;
    }

    if (v7 == 7)
    {
      v9 = ETKissMessage;
      goto LABEL_21;
    }

    if (v7 == 8)
    {
      v9 = ETAngerMessage;
      goto LABEL_21;
    }

LABEL_44:
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v8];
        *buf = 67109378;
        *v26 = v8;
        *&v26[4] = 2112;
        *&v26[6] = v24;
        _os_log_impl(&dword_248D00000, v23, OS_LOG_TYPE_INFO, "Unknown message type %du (%@)", buf, 0x12u);
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v9 = ETHeartbeatMessage;
    }

    else
    {
      v9 = ETSketchMessage;
    }

    goto LABEL_21;
  }

  if (v7 == 1)
  {
    v9 = ETTapMessage;
    goto LABEL_21;
  }

  if (v7 != 2)
  {
    goto LABEL_44;
  }

  v9 = ETQuickTapMessage;
LABEL_21:
  v10 = [[v9 alloc] initWithArchiveData:v6];
LABEL_22:
  if ([(ETPHeader *)v5 hasIdentifier])
  {
    v11 = [(ETPHeader *)v5 identifier];
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
    v13 = v12 == 0;

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v26 = "+[ETMessage unarchive:]";
          *&v26[8] = 2112;
          *&v26[10] = v11;
          _os_log_impl(&dword_248D00000, v14, OS_LOG_TYPE_INFO, "%s: unarchived Digital Touch message header has a malformed identifier! (%@)", buf, 0x16u);
        }
      }
    }

    else
    {
      [v10 setIdentifier:v11];
    }
  }

  if ([(ETPHeader *)v5 hasBaseColor])
  {
    v15 = bswap32([(ETPHeader *)v5 baseColor]);
    v16 = [MEMORY[0x277D75348] colorWithRed:v15 / 255.0 green:BYTE1(v15) / 255.0 blue:BYTE2(v15) / 255.0 alpha:HIBYTE(v15) / 255.0];
    [v10 setColor:v16];
  }

  else
  {
    [v10 setColor:0];
  }

  v17 = [(ETPHeader *)v5 hasSendDate];
  v18 = 0.0;
  if (v17)
  {
    v18 = [(ETPHeader *)v5 sendDate]/ 1000.0;
  }

  [v10 setSendTime:v18];
  v19 = [(ETPHeader *)v5 hasStartDelay];
  v20 = 0.0;
  if (v19)
  {
    [(ETPHeader *)v5 startDelay];
  }

  [v10 setStartDelay:v20];
  if ([(ETPHeader *)v5 hasSupportsPlaybackTimeOffsets])
  {
    v21 = [(ETPHeader *)v5 supportsPlaybackTimeOffsets];
  }

  else
  {
    v21 = 0;
  }

  [v10 setSupportsPlaybackTimeOffset:v21];

LABEL_41:

  return v10;
}

- (id)archive
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ETPHeader);
  v4 = [(ETMessage *)self messageType];
  if (v4 < 0xB && ((0x7C7u >> v4) & 1) != 0)
  {
    [(ETPHeader *)v3 setMessageType:dword_248D32DC0[v4]];
    v5 = [(ETMessage *)self color];

    if (v5)
    {
      v6 = [(ETMessage *)self color];
      v20 = 0.0;
      *buf = 0;
      v18 = 0.0;
      v19 = 0.0;
      [v6 getRed:buf green:&v20 blue:&v19 alpha:&v18];
      v7 = v19 * 255.0;
      v8 = llroundf(v7);
      v9.f64[0] = v18;
      v9.f64[1] = v20;
      v10 = vshl_u32(vcvt_s32_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(v9, vdupq_n_s64(0x406FE00000000000uLL))))), 0x800000018);
      v11 = *buf * 255.0;
      [(ETPHeader *)v3 setBaseColor:bswap32(v10.i32[0] | (v8 << 16) | llroundf(v11) | v10.i32[1])];
    }

    [(ETMessage *)self sendTime];
    [(ETPHeader *)v3 setSendDate:(v12 * 1000.0)];
    v13 = [(ETMessage *)self archiveData];
    [(ETPHeader *)v3 setMessageData:v13];

    [(ETPHeader *)v3 setIdentifier:self->_identifier];
    [(ETPHeader *)v3 setStartDelay:self->_startDelay];
    [(ETPHeader *)v3 setSupportsPlaybackTimeOffsets:self->_supportsPlaybackTimeOffset];
    v14 = [(ETPHeader *)v3 data];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = NSStringFromETMessageType([(ETMessage *)self messageType]);
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_impl(&dword_248D00000, v15, OS_LOG_TYPE_INFO, "Cannot archive message of type %@", buf, 0xCu);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (ETMessage)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = ETMessage;
  return [(ETMessage *)&v4 init];
}

- (void)displayInScene:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v6 = getSKSetResourceBundleSymbolLoc_ptr;
  v32 = getSKSetResourceBundleSymbolLoc_ptr;
  if (!getSKSetResourceBundleSymbolLoc_ptr)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getSKSetResourceBundleSymbolLoc_block_invoke;
    v27 = &unk_278F7A048;
    v28 = &v29;
    v7 = SpriteKitLibrary();
    v30[3] = dlsym(v7, "SKSetResourceBundle");
    getSKSetResourceBundleSymbolLoc_ptr = *(v28[1] + 24);
    v6 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v6)
  {
    [ETMessage displayInScene:];
    __break(1u);
  }

  v6(v5);

  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = getSKSpriteNodeClass_softClass;
  v32 = getSKSpriteNodeClass_softClass;
  if (!getSKSpriteNodeClass_softClass)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __getSKSpriteNodeClass_block_invoke;
    v27 = &unk_278F7A048;
    v28 = &v29;
    __getSKSpriteNodeClass_block_invoke(&v24);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  v10 = [v8 spriteNodeWithImageNamed:@"Dot"];
  [v10 setColorBlendFactor:0.8];
  v11 = [(ETMessage *)self color];
  [v10 setColor:v11];

  [v10 setScale:0.0005];
  SKActionClass = getSKActionClass();
  v13 = [getSKActionClass() scaleTo:0.005 duration:1.0];
  v34[0] = v13;
  v14 = [getSKActionClass() fadeOutWithDuration:1.0];
  v34[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v16 = [SKActionClass group:v15];

  v17 = getSKActionClass();
  v33[0] = v16;
  v18 = [getSKActionClass() removeFromParent];
  v33[1] = v18;
  v19 = getSKActionClass();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __28__ETMessage_displayInScene___block_invoke;
  v23[3] = &unk_278F79ED0;
  v23[4] = self;
  v20 = [v19 runBlock:v23 queue:MEMORY[0x277D85CD0]];
  v33[2] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v22 = [v17 sequence:v21];
  [v10 runAction:v22];

  [v4 addChild:v10];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ETMessage *)self messageTypeAsString];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_timeCreated];
  timeCreated = self->_timeCreated;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_sendTime];
  v9 = [v3 stringWithFormat:@"%@: %p messageType: %@, time created: %@ (%f), sendTime: %@ (%f), identifier: %@", v4, self, v5, v6, *&timeCreated, v8, *&self->_sendTime, self->_identifier];;

  return v9;
}

- (CGPoint)scenePointFromNormalizedPoint:(CGPoint)a3 inScene:(id)a4
{
  y = a3.y;
  x = a3.x;
  [a4 size];
  v7 = x * v6;
  v9 = y * v8;
  result.y = v9;
  result.x = v7;
  return result;
}

- (void)stopPlaying
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained messageWillStopPlaying:self];

  v4 = objc_loadWeakRetained(&self->_delegate);
  [v4 messageDidStopPlaying:self];
}

- (void)wispChildren
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableSet *)self->_childrenDelayingWisp copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 messageType] != 1)
        {
          [v8 stopPlaying];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)childMessageDidDelayWisp:(id)a3
{
  v4 = a3;
  childrenDelayingWisp = self->_childrenDelayingWisp;
  v8 = v4;
  if (!childrenDelayingWisp)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_childrenDelayingWisp;
    self->_childrenDelayingWisp = v6;

    v4 = v8;
    childrenDelayingWisp = self->_childrenDelayingWisp;
  }

  [(NSMutableSet *)childrenDelayingWisp addObject:v4];
}

- (ETMessageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ETMessageTimeSource)timeSource
{
  WeakRetained = objc_loadWeakRetained(&self->_timeSource);

  return WeakRetained;
}

- (ETMessage)parentMessage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentMessage);

  return WeakRetained;
}

- (uint64_t)displayInScene:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getSKSpriteNodeClass_block_invoke_cold_1();
}

@end