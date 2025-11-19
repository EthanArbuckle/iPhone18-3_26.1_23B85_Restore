@interface ETAngerMessage
- (CGPoint)normalizedCenter;
- (ETAngerMessage)init;
- (ETAngerMessage)initWithArchiveData:(id)a3;
- (id)archiveData;
- (void)_updateCenterFromNormalizedPoint:(CGPoint)a3 inScene:(id)a4;
- (void)displayInScene:(id)a3;
- (void)setNormalizedPoint:(CGPoint)a3 atRelativeTime:(double)a4 inScene:(id)a5;
- (void)stopPlaying;
@end

@implementation ETAngerMessage

- (ETAngerMessage)init
{
  v9.receiver = self;
  v9.super_class = ETAngerMessage;
  v2 = [(ETMessage *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    points = v2->_points;
    v2->_points = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    delays = v2->_delays;
    v2->_delays = v5;

    v7 = v2;
  }

  return v2;
}

- (ETAngerMessage)initWithArchiveData:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ETAngerMessage;
  v5 = [(ETMessage *)&v31 initWithArchiveData:v4];
  if (v5)
  {
    v6 = [[ETPAnger alloc] initWithData:v4];
    v7 = v6;
    if (v6 && [(ETPAnger *)v6 hasDuration]&& [(ETPAnger *)v7 hasNormalizedCenterX]&& [(ETPAnger *)v7 hasNormalizedCenterY])
    {
      [(ETPAnger *)v7 duration];
      v5->_duration = v8;
      [(ETPAnger *)v7 normalizedCenterX];
      v10 = v9;
      [(ETPAnger *)v7 normalizedCenterY];
      v5->_normalizedCenter.x = v10;
      v5->_normalizedCenter.y = v11;
      if (![(ETPAnger *)v7 hasPoints])
      {
LABEL_14:
        v26 = v5;
LABEL_18:

        goto LABEL_19;
      }

      v12 = [(ETPAnger *)v7 points];
      v13 = [v12 length];
      v14 = v13 >> 2;
      v28 = [v12 bytes];
      v15 = [(ETPAnger *)v7 delays];
      v16 = [v15 length];
      v17 = [v15 bytes];
      if (v13 >> 2 == v16 >> 1)
      {
        if (v13 >= 4)
        {
          v18 = v17;
          v19 = 0;
          do
          {
            v20 = HIWORD(*(v28 + 4 * v19)) / 32767.0 + -1.0;
            v30.x = *(v28 + 4 * v19) / 32767.0 + -1.0;
            v30.y = v20;
            if (!v19)
            {
              v5->_normalizedCenter = v30;
            }

            points = v5->_points;
            v22 = [MEMORY[0x277CCAE60] value:&v30 withObjCType:"{CGPoint=dd}"];
            [(NSMutableArray *)points addObject:v22];

            LOWORD(v23) = *(v18 + 2 * v19);
            v29 = v23 / 1000.0;
            delays = v5->_delays;
            v25 = [MEMORY[0x277CCAE60] value:&v29 withObjCType:"d"];
            [(NSMutableArray *)delays addObject:v25];

            ++v19;
          }

          while (v14 != v19);
        }

        goto LABEL_14;
      }
    }

    v26 = 0;
    goto LABEL_18;
  }

  v26 = 0;
LABEL_19:

  return v26;
}

- (id)archiveData
{
  v3 = objc_alloc_init(ETPAnger);
  duration = self->_duration;
  *&duration = duration;
  [(ETPAnger *)v3 setDuration:duration];
  x = self->_normalizedCenter.x;
  *&x = x;
  [(ETPAnger *)v3 setNormalizedCenterX:x];
  y = self->_normalizedCenter.y;
  *&y = y;
  [(ETPAnger *)v3 setNormalizedCenterY:y];
  v7 = [(NSMutableArray *)self->_points count];
  v8 = [MEMORY[0x277CBEB28] data];
  [v8 setLength:4 * v7];
  v21 = v8;
  v9 = [v8 mutableBytes];
  v10 = [MEMORY[0x277CBEB28] data];
  [v10 setLength:2 * v7];
  v11 = [v10 mutableBytes];
  if (v7)
  {
    v12 = v11;
    v13 = 0;
    v22 = *MEMORY[0x277CBF348];
    do
    {
      v24 = v22;
      v14 = [(NSMutableArray *)self->_points objectAtIndexedSubscript:v13];
      [v14 getValue:&v24];

      v15 = (*&v24 + 1.0) * 32767.0;
      v16 = llroundf(v15);
      v17 = (*(&v24 + 1) + 1.0) * 32767.0;
      *(v9 + 4 * v13) = v16 | (llroundf(v17) << 16);
      v23 = 0.0;
      v18 = [(NSMutableArray *)self->_delays objectAtIndexedSubscript:v13];
      [v18 getValue:&v23];

      *(v12 + 2 * v13++) = llround(v23 * 1000.0);
    }

    while (v7 != v13);
  }

  [(ETPAnger *)v3 setPoints:v21];
  [(ETPAnger *)v3 setDelays:v10];
  v19 = [(ETPAnger *)v3 data];

  return v19;
}

- (void)displayInScene:(id)a3
{
  v77[2] = *MEMORY[0x277D85DE8];
  val = a3;
  v4 = ETFrameworkBundle();
  location = 0;
  p_location = &location;
  v74 = 0x2020000000;
  v5 = getSKSetResourceBundleSymbolLoc_ptr_1;
  v75 = getSKSetResourceBundleSymbolLoc_ptr_1;
  if (!getSKSetResourceBundleSymbolLoc_ptr_1)
  {
    *&v68 = MEMORY[0x277D85DD0];
    *(&v68 + 1) = 3221225472;
    v69 = __getSKSetResourceBundleSymbolLoc_block_invoke_1;
    v70 = &unk_278F7A048;
    v71 = &location;
    v6 = SpriteKitLibrary_1();
    p_location[3] = dlsym(v6, "SKSetResourceBundle");
    getSKSetResourceBundleSymbolLoc_ptr_1 = *(v71[1] + 3);
    v5 = p_location[3];
  }

  _Block_object_dispose(&location, 8);
  if (!v5)
  {
    [ETMessage displayInScene:];
    __break(1u);
  }

  v5(v4);

  v54 = [getSKUniformClass_0() uniformWithName:@"u_shader_time" float:0.0];
  location = 0;
  p_location = &location;
  v74 = 0x2050000000;
  v7 = getSKTextureClass_softClass_0;
  v75 = getSKTextureClass_softClass_0;
  if (!getSKTextureClass_softClass_0)
  {
    *&v68 = MEMORY[0x277D85DD0];
    *(&v68 + 1) = 3221225472;
    v69 = __getSKTextureClass_block_invoke_0;
    v70 = &unk_278F7A048;
    v71 = &location;
    __getSKTextureClass_block_invoke_0(&v68);
    v7 = p_location[3];
  }

  v8 = v7;
  _Block_object_dispose(&location, 8);
  v53 = [v7 textureWithImageNamed:@"angerAtlas"];
  v52 = [getSKUniformClass_0() uniformWithName:@"u_tex2" texture:v53];
  location = 0;
  p_location = &location;
  v74 = 0x2050000000;
  v9 = getSKShaderClass_softClass_0;
  v75 = getSKShaderClass_softClass_0;
  if (!getSKShaderClass_softClass_0)
  {
    *&v68 = MEMORY[0x277D85DD0];
    *(&v68 + 1) = 3221225472;
    v69 = __getSKShaderClass_block_invoke_0;
    v70 = &unk_278F7A048;
    v71 = &location;
    __getSKShaderClass_block_invoke_0(&v68);
    v9 = p_location[3];
  }

  v10 = v9;
  _Block_object_dispose(&location, 8);
  v55 = [v9 shaderWithFileNamed:@"anger"];
  v77[0] = v52;
  v77[1] = v54;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  [v55 setUniforms:v11];

  [val size];
  v13 = v12;
  location = 0;
  p_location = &location;
  v74 = 0x2050000000;
  v14 = getSKSpriteNodeClass_softClass_1;
  v75 = getSKSpriteNodeClass_softClass_1;
  if (!getSKSpriteNodeClass_softClass_1)
  {
    *&v68 = MEMORY[0x277D85DD0];
    *(&v68 + 1) = 3221225472;
    v69 = __getSKSpriteNodeClass_block_invoke_1;
    v70 = &unk_278F7A048;
    v71 = &location;
    __getSKSpriteNodeClass_block_invoke_1(&v68);
    v14 = p_location[3];
  }

  v15 = v14;
  _Block_object_dispose(&location, 8);
  v16 = [MEMORY[0x277D75348] clearColor];
  v17 = [v16 colorSpaceConvertedColor];
  v18 = fmin(v13, 272.0);
  v19 = [v14 spriteNodeWithColor:v17 size:{v18, v18 / 272.0 * 340.0}];
  anger = self->_anger;
  self->_anger = v19;

  [(SKSpriteNode *)self->_anger setShader:v55];
  v21 = self->_anger;
  v22 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v23 = [v22 colorSpaceConvertedColor];
  [(SKSpriteNode *)v21 setColor:v23];

  [(SKSpriteNode *)self->_anger setColorBlendFactor:1.0];
  [(SKSpriteNode *)self->_anger setBlendMode:1];
  [(ETAngerMessage *)self _updateCenterFromNormalizedPoint:val inScene:self->_normalizedCenter.x, self->_normalizedCenter.y];
  [val size];
  [(SKSpriteNode *)self->_anger setScale:fmax(v24 / 156.0, 1.0) * 0.5];
  [val addChild:self->_anger];
  v25 = self->_anger;
  v26 = [getSKActionClass_1() fadeInWithDuration:0.2];
  [(SKSpriteNode *)v25 runAction:v26 withKey:@"fade"];

  v27 = self->_anger;
  v28 = [getSKActionClass_1() scaleTo:1.5 duration:0.2];
  [(SKSpriteNode *)v27 runAction:v28 withKey:@"scale"];

  if (self->_duration != 0.0)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, val);
    if (![(ETMessage *)self isRenderingOffscreen])
    {
      v29 = [MEMORY[0x277CBEB18] array];
      v30 = [(NSMutableArray *)self->_points count];
      if (v30 >= 1)
      {
        v31 = 0;
        v56 = *MEMORY[0x277CBF348];
        do
        {
          v68 = v56;
          v32 = [(NSMutableArray *)self->_points objectAtIndexedSubscript:v31];
          [v32 getValue:&v68];

          v66 = 0.0;
          v33 = [(NSMutableArray *)self->_delays objectAtIndexedSubscript:v31];
          [v33 getValue:&v66];

          v34 = [getSKActionClass_1() waitForDuration:v66];
          [v29 addObject:v34];

          SKActionClass_1 = getSKActionClass_1();
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __33__ETAngerMessage_displayInScene___block_invoke;
          v62[3] = &unk_278F7A520;
          objc_copyWeak(&v63, &location);
          v65 = v68;
          objc_copyWeak(&v64, &from);
          v36 = [SKActionClass_1 runBlock:v62];
          [v29 addObject:v36];

          objc_destroyWeak(&v64);
          objc_destroyWeak(&v63);
          ++v31;
        }

        while (v30 != v31);
      }

      v37 = self->_anger;
      v38 = [getSKActionClass_1() sequence:v29];
      [(SKSpriteNode *)v37 runAction:v38];

      v39 = self->_anger;
      v40 = getSKActionClass_1();
      v41 = [getSKActionClass_1() waitForDuration:self->_duration + 0.2];
      v76[0] = v41;
      v42 = getSKActionClass_1();
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __33__ETAngerMessage_displayInScene___block_invoke_2;
      v60[3] = &unk_278F7A468;
      objc_copyWeak(&v61, &location);
      v43 = MEMORY[0x277D85CD0];
      v44 = MEMORY[0x277D85CD0];
      v45 = [v42 runBlock:v60 queue:v43];
      v76[1] = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
      v47 = [v40 sequence:v46];
      [(SKSpriteNode *)v39 runAction:v47];

      objc_destroyWeak(&v61);
    }

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v48 = self->_anger;
  v49 = getSKActionClass_1();
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __33__ETAngerMessage_displayInScene___block_invoke_3;
  v58[3] = &unk_278F7A4B8;
  v59 = v54;
  v50 = v54;
  v51 = [v49 customActionWithDuration:v58 actionBlock:10 + 0.2 + 0.2];
  [(SKSpriteNode *)v48 runAction:v51];
}

void __33__ETAngerMessage_displayInScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateCenterFromNormalizedPoint:v2 inScene:{*(a1 + 48), *(a1 + 56)}];
}

void __33__ETAngerMessage_displayInScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopPlaying];
}

uint64_t __33__ETAngerMessage_displayInScene___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 floatValue];
  v3 = v2 + 0.01666;
  *&v3 = v3;

  return [v1 setFloatValue:v3];
}

- (void)_updateCenterFromNormalizedPoint:(CGPoint)a3 inScene:(id)a4
{
  anger = self->_anger;
  [(ETMessage *)self scenePointFromNormalizedPoint:a4 inScene:a3.x, a3.y];

  [(SKSpriteNode *)anger setPosition:?];
}

- (void)stopPlaying
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [(ETMessage *)self delegate];
  [v3 messageWillStopPlaying:self];
  [(SKSpriteNode *)self->_anger removeAllActions];
  anger = self->_anger;
  SKActionClass_1 = getSKActionClass_1();
  v6 = [getSKActionClass_1() fadeOutWithDuration:0.2];
  v28[0] = v6;
  v7 = [getSKActionClass_1() removeFromParent];
  v28[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v9 = [SKActionClass_1 sequence:v8];
  [(SKSpriteNode *)anger runAction:v9 withKey:@"fade"];

  v10 = self->_anger;
  v11 = [getSKActionClass_1() scaleTo:0.0 duration:0.2];
  [(SKSpriteNode *)v10 runAction:v11 withKey:@"scale"];

  objc_initWeak(&location, self->_anger);
  v12 = self->_anger;
  v13 = getSKActionClass_1();
  v14 = [getSKActionClass_1() waitForDuration:0.2];
  v27[0] = v14;
  v15 = getSKActionClass_1();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __29__ETAngerMessage_stopPlaying__block_invoke;
  v24[3] = &unk_278F7A468;
  objc_copyWeak(&v25, &location);
  v16 = [v15 runBlock:v24];
  v27[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v18 = [v13 sequence:v17];
  [(SKSpriteNode *)v12 runAction:v18];

  v19 = [(SKSpriteNode *)self->_anger parent];
  LODWORD(v14) = v19 == 0;

  if (v14)
  {
    [v3 messageDidStopPlaying:self];
  }

  else
  {
    v20 = dispatch_time(0, 1000000000);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__ETAngerMessage_stopPlaying__block_invoke_2;
    v21[3] = &unk_278F79FB0;
    v22 = v3;
    v23 = self;
    dispatch_after(v20, MEMORY[0x277D85CD0], v21);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __29__ETAngerMessage_stopPlaying__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeFromParent];
}

- (void)setNormalizedPoint:(CGPoint)a3 atRelativeTime:(double)a4 inScene:(id)a5
{
  v13 = a3;
  v12 = a4;
  delays = self->_delays;
  v7 = MEMORY[0x277CCAE60];
  v8 = a5;
  v9 = [v7 valueWithBytes:&v12 objCType:"d"];
  [(NSMutableArray *)delays addObject:v9];

  points = self->_points;
  v11 = [MEMORY[0x277CCAE60] valueWithBytes:&v13 objCType:"{CGPoint=dd}"];
  [(NSMutableArray *)points addObject:v11];

  [(ETAngerMessage *)self _updateCenterFromNormalizedPoint:v8 inScene:v13.x, v13.y];
}

- (CGPoint)normalizedCenter
{
  x = self->_normalizedCenter.x;
  y = self->_normalizedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end