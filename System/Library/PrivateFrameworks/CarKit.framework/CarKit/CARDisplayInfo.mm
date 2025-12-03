@interface CARDisplayInfo
- (BOOL)_showsInstrumentsWithIdentifier:(id)identifier isPrimaryDisplay:(BOOL)display;
- (BOOL)hasPunchThroughWithIdentifier:(id)identifier;
- (BOOL)hasVideoStreamWithIdentifier:(id)identifier;
- (BOOL)updateStreamsWithPhysicalDisplayDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary;
- (CARDisplayInfo)initWithLogicalScreenDictionary:(id)dictionary isPrimaryDisplay:(BOOL)display;
- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary;
- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary;
- (CGPoint)originForScreenInfoIdentifier:(id)identifier;
- (CGSize)physicalSize;
- (CGSize)pixelSize;
- (NSSet)punchThroughIdentifiers;
- (NSSet)videoStreamIdentifiers;
- (id)description;
- (id)punchThroughWithIdentifier:(id)identifier;
- (id)videoStreamWithIdentifier:(id)identifier;
- (void)_updateOEMViews:(id)views;
- (void)updateStreams:(id)streams;
@end

@implementation CARDisplayInfo

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary
{
  dictionaryCopy = dictionary;
  pluginDictionaryCopy = pluginDictionary;
  v26.receiver = self;
  v26.super_class = CARDisplayInfo;
  v8 = [(CARDisplayInfo *)&v26 init];
  v9 = v8;
  if (!v8)
  {
LABEL_32:
    v21 = v9;
    goto LABEL_33;
  }

  if ((CRSizeFromAirPlayDictionary(dictionaryCopy, &v8->_pixelSize.width) & 1) == 0)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_23;
  }

  if ((CRPhysicalSizeFromAirPlayDictionary(dictionaryCopy, &v9->_physicalSize.width) & 1) == 0)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v10 = [pluginDictionaryCopy objectForKey:@"uid"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

LABEL_23:

    goto LABEL_24;
  }

  v13 = [v11 copy];
  identifier = v9->_identifier;
  v9->_identifier = v13;

  objc_opt_class();
  v15 = [dictionaryCopy objectForKey:@"properties"];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__CARDisplayInfo_initWithPhysicalScreenDictionary_displayPluginDictionary___block_invoke;
  v24[3] = &unk_1E82FCDB0;
  v17 = v9;
  v25 = v17;
  [v16 enumerateObjectsUsingBlock:v24];
  v17->_supportsDDPContent = 1;
  v18 = [(CARDisplayInfo *)v17 updateStreamsWithPhysicalDisplayDictionary:dictionaryCopy displayPluginDictionary:pluginDictionaryCopy];
  if (v18)
  {
    objc_opt_class();
    v19 = [pluginDictionaryCopy objectForKey:@"automakerInputStreams"];
    if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      [(CARDisplayInfo *)v17 _updateOEMViews:v20];
    }

    else
    {
      oemPunchThroughs = v17->_oemPunchThroughs;
      v17->_oemPunchThroughs = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v20 = CarGeneralLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  if (v18)
  {
    goto LABEL_32;
  }

LABEL_24:
  v21 = 0;
LABEL_33:

  return v21;
}

void __75__CARDisplayInfo_initWithPhysicalScreenDictionary_displayPluginDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v7 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v4 = v7;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"CarPlay"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"Instrument Cluster"])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"Map"])
  {
    v6 = 12;
  }

  else if ([v5 isEqualToString:@"additionalContent"])
  {
    v6 = 8;
  }

  else
  {
    if (![v5 isEqualToString:@"showsInstruments"])
    {
      goto LABEL_18;
    }

    v6 = 13;
  }

  *(*(a1 + 32) + v6) = 1;
LABEL_18:
}

- (CARDisplayInfo)initWithPhysicalScreenDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = CARDisplayInfo;
  v5 = [(CARDisplayInfo *)&v24 init];
  v6 = v5;
  if (!v5)
  {
LABEL_36:
    v19 = v6;
    goto LABEL_37;
  }

  if ((CRSizeFromAirPlayDictionary(dictionaryCopy, &v5->_pixelSize.width) & 1) == 0)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_27;
  }

  if ((CRPhysicalSizeFromAirPlayDictionary(dictionaryCopy, &v6->_physicalSize.width) & 1) == 0)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

    goto LABEL_27;
  }

  objc_opt_class();
  v7 = [dictionaryCopy objectForKey:@"uid"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }

LABEL_27:

    goto LABEL_28;
  }

  v10 = [v8 copy];
  identifier = v6->_identifier;
  v6->_identifier = v10;

  objc_opt_class();
  v12 = [dictionaryCopy objectForKey:@"properties"];
  if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__CARDisplayInfo_initWithPhysicalScreenDictionary___block_invoke;
  v22[3] = &unk_1E82FCDB0;
  v14 = v6;
  v23 = v14;
  [v13 enumerateObjectsUsingBlock:v22];
  objc_opt_class();
  v15 = [dictionaryCopy objectForKey:@"initialVideoStreams"];
  if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    [(CARDisplayInfo *)v14 updateStreams:v16];
    objc_opt_class();
    v17 = [dictionaryCopy objectForKey:@"automakerInputStreams"];
    if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      [(CARDisplayInfo *)v14 _updateOEMViews:v18];
    }

    else
    {
      oemPunchThroughs = v14->_oemPunchThroughs;
      v14->_oemPunchThroughs = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v18 = CarGeneralLogging();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  if (v16)
  {
    goto LABEL_36;
  }

LABEL_28:
  v19 = 0;
LABEL_37:

  return v19;
}

void __51__CARDisplayInfo_initWithPhysicalScreenDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  v7 = v4;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v4 = v7;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"CarPlay"])
  {
    v6 = 9;
LABEL_16:
    *(*(a1 + 32) + v6) = 1;
    goto LABEL_17;
  }

  if ([v5 isEqualToString:@"Instrument Cluster"])
  {
    v6 = 11;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"Map"])
  {
    v6 = 12;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"DPManaged"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"DDPManaged"))
  {
    v6 = 10;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"additionalContent"])
  {
    v6 = 8;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"showsInstruments"])
  {
    v6 = 13;
    goto LABEL_16;
  }

LABEL_17:
}

- (CARDisplayInfo)initWithLogicalScreenDictionary:(id)dictionary isPrimaryDisplay:(BOOL)display
{
  displayCopy = display;
  v22[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = CARDisplayInfo;
  v7 = [(CARDisplayInfo *)&v21 init];
  if (!v7)
  {
LABEL_20:
    v17 = v7;
    goto LABEL_21;
  }

  if (CRSizeFromDictionary([dictionaryCopy objectForKey:*MEMORY[0x1E6962440]], (v7 + 56)))
  {
    if (CRSizeFromDictionary([dictionaryCopy objectForKey:*MEMORY[0x1E6962438]], (v7 + 40)))
    {
      objc_opt_class();
      v8 = [dictionaryCopy objectForKey:@"ScreenID"];
      if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v11 = [v9 copy];
        v12 = *(v7 + 2);
        *(v7 + 2) = v11;

        v7[9] = 1;
        *(v7 + 11) = 257;
        v7[13] = [v7 _showsInstrumentsWithIdentifier:v9 isPrimaryDisplay:displayCopy];
        v13 = [[CARStreamInfo alloc] initWithStreamInfoDictionary:dictionaryCopy];
        v14 = v13;
        v15 = MEMORY[0x1E695E0F0];
        if (v13)
        {
          v22[0] = v13;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
        }

        else
        {
          v16 = MEMORY[0x1E695E0F0];
        }

        v18 = *(v7 + 4);
        *(v7 + 4) = v16;

        v19 = *(v7 + 3);
        *(v7 + 3) = v15;

        goto LABEL_20;
      }

      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
      }
    }

    else
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
      }
    }
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
    }
  }

  v17 = 0;
LABEL_21:

  return v17;
}

- (id)punchThroughWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  oemPunchThroughs = [(CARDisplayInfo *)self oemPunchThroughs];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CARDisplayInfo_punchThroughWithIdentifier___block_invoke;
  v9[3] = &unk_1E82FCDD8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [oemPunchThroughs bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__CARDisplayInfo_punchThroughWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasPunchThroughWithIdentifier:(id)identifier
{
  v3 = [(CARDisplayInfo *)self punchThroughWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (NSSet)punchThroughIdentifiers
{
  oemPunchThroughs = [(CARDisplayInfo *)self oemPunchThroughs];
  v3 = [oemPunchThroughs bs_map:&__block_literal_global_18];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (id)videoStreamWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  streams = [(CARDisplayInfo *)self streams];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__CARDisplayInfo_videoStreamWithIdentifier___block_invoke;
  v9[3] = &unk_1E82FCC50;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [streams bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __44__CARDisplayInfo_videoStreamWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)hasVideoStreamWithIdentifier:(id)identifier
{
  v3 = [(CARDisplayInfo *)self videoStreamWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (NSSet)videoStreamIdentifiers
{
  streams = [(CARDisplayInfo *)self streams];
  v3 = [streams bs_map:&__block_literal_global_97];

  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = CARDisplayInfo;
  v4 = [(CARDisplayInfo *)&v12 description];
  identifier = self->_identifier;
  v6 = BSStringFromCGSize();
  v7 = BSStringFromCGSize();
  if ([(CARDisplayInfo *)self supportsAdditionalContent])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CARDisplayInfo *)self showsInstruments])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"%@ {identifier: %@, physicalSize: %@, pixelSize: %@, additionalContent: %@, showsInstruments: %@}", v4, identifier, v6, v7, v8, v9];

  return v10;
}

- (BOOL)updateStreamsWithPhysicalDisplayDictionary:(id)dictionary displayPluginDictionary:(id)pluginDictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pluginDictionaryCopy = pluginDictionary;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKey:@"initialVideoStreams"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  v11 = [pluginDictionaryCopy objectForKey:@"managedVideoStreams"];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    selfCopy = self;
    v35 = pluginDictionaryCopy;
    v36 = dictionaryCopy;
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81FC000, v13, OS_LOG_TYPE_INFO, "Using ManagedVideoStreams array", buf, 2u);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v33 = v9;
    obj = v9;
    v40 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v40)
    {
      v38 = *v48;
      v39 = v12;
      do
      {
        v14 = 0;
        do
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v14;
          v15 = *(*(&v47 + 1) + 8 * v14);
          objc_opt_class();
          v41 = v15;
          v16 = [v15 objectForKey:@"uuid"];
          if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v18 = v12;
          v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v44;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v44 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v43 + 1) + 8 * i);
                objc_opt_class();
                v24 = [v23 objectForKey:@"uuid"];
                if (v24 && (objc_opt_isKindOfClass() & 1) != 0)
                {
                  v25 = v24;
                }

                else
                {
                  v25 = 0;
                }

                v26 = [v25 isEqual:v17];
                if (v26)
                {
                  v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v41];
                  [v27 addEntriesFromDictionary:v23];
                  [array addObject:v27];

                  goto LABEL_35;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

LABEL_35:

          v14 = v42 + 1;
          v12 = v39;
        }

        while (v42 + 1 != v40);
        v40 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v40);
    }

    pluginDictionaryCopy = v35;
    dictionaryCopy = v36;
    v9 = v33;
    self = selfCopy;
  }

  if ([array count])
  {
    selfCopy3 = self;
    v29 = array;
LABEL_42:
    [(CARDisplayInfo *)selfCopy3 updateStreams:v29];
    v30 = 1;
    goto LABEL_43;
  }

  if (v9)
  {
    selfCopy3 = self;
    v29 = v9;
    goto LABEL_42;
  }

  v32 = CarGeneralLogging();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [CARDisplayInfo initWithPhysicalScreenDictionary:displayPluginDictionary:];
  }

  v30 = 0;
LABEL_43:

  return v30;
}

- (void)updateStreams:(id)streams
{
  v4 = MEMORY[0x1E695DF70];
  streamsCopy = streams;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__CARDisplayInfo_updateStreams___block_invoke;
  v10[3] = &unk_1E82FCC00;
  v11 = v6;
  v7 = v6;
  [streamsCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  streams = self->_streams;
  self->_streams = v8;
}

void __32__CARDisplayInfo_updateStreams___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [[CARStreamInfo alloc] initWithDictionary:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v6 = v4;
  }

  else
  {

    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __32__CARDisplayInfo_updateStreams___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (CGPoint)originForScreenInfoIdentifier:(id)identifier
{
  identifierCopy = identifier;
  streams = [(CARDisplayInfo *)self streams];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__CARDisplayInfo_originForScreenInfoIdentifier___block_invoke;
  v14[3] = &unk_1E82FCC50;
  v15 = identifierCopy;
  v6 = identifierCopy;
  v7 = [streams bs_firstObjectPassingTest:v14];

  if (v7)
  {
    [v7 origin];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x1E695EFF8];
    v11 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

uint64_t __48__CARDisplayInfo_originForScreenInfoIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateOEMViews:(id)views
{
  v4 = MEMORY[0x1E695DF70];
  viewsCopy = views;
  v6 = objc_alloc_init(v4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__CARDisplayInfo__updateOEMViews___block_invoke;
  v10[3] = &unk_1E82FCC00;
  v11 = v6;
  v7 = v6;
  [viewsCopy enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];
  oemPunchThroughs = self->_oemPunchThroughs;
  self->_oemPunchThroughs = v8;
}

void __34__CARDisplayInfo__updateOEMViews___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [[CAROEMPunchThrough alloc] initWithDictionary:v4];
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
    }

    v6 = v4;
  }

  else
  {

    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __34__CARDisplayInfo__updateOEMViews___block_invoke_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (BOOL)_showsInstrumentsWithIdentifier:(id)identifier isPrimaryDisplay:(BOOL)display
{
  displayCopy = display;
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (displayCopy)
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Setting showsInstruments to NO for primary display with identifier: %@", &v14, 0xCu);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = +[CRCarPlayCapabilities capabilitiesIdentifier];
    v6 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v8];

    userInfo = [v6 userInfo];
    v10 = [userInfo objectForKey:@"showsInstrumentsIdentifier"];

    if (v10)
    {
      v7 = [identifierCopy isEqualToString:v10];
      v11 = CarGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = @"NO";
        if (v7)
        {
          v12 = @"YES";
        }

        v14 = 138412546;
        v15 = identifierCopy;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Found a cluster display identifier in capabilities for secondary screen with identifier %@, setting showsInstruments to %@", &v14, 0x16u);
      }
    }

    else
    {
      v11 = CarGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = identifierCopy;
        _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "No cluster display identifier found in capabilities for secondary screen with identifier %@, setting showsInstruments to YES", &v14, 0xCu);
      }

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end