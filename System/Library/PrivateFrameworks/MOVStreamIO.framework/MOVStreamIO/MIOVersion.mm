@interface MIOVersion
+ (id)allVersionedKeysForKey:(id)key modifier:(id)modifier;
+ (id)pre3_15_0_Mapping;
+ (id)versionZero;
- (BOOL)isAllDigitsInString:(id)string;
- (BOOL)isEqual:(id)equal;
- (MIOVersion)init;
- (MIOVersion)initWithVersionString:(id)string error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getVersionAsString;
- (id)versionedKey:(id)key modifier:(id)modifier;
- (int64_t)compareToVersion:(id)version;
- (unint64_t)hash;
@end

@implementation MIOVersion

+ (id)versionZero
{
  v2 = [[MIOVersion alloc] initWithVersionString:@"0.0" error:0];

  return v2;
}

- (MIOVersion)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v5 = [(MIOVersion *)self initWithVersionString:v4 error:0];
  return v5;
}

- (MIOVersion)initWithVersionString:(id)string error:(id *)error
{
  stringCopy = string;
  v28.receiver = self;
  v28.super_class = MIOVersion;
  v7 = [(MIOVersion *)&v28 init];
  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = [stringCopy componentsSeparatedByString:@"."];
  if ([v8 count] >= 2 && objc_msgSend(v8, "count") < 4)
  {
    v11 = [v8 objectAtIndexedSubscript:0];
    v12 = [(MIOVersion *)v7 isAllDigitsInString:v11];

    if (v12)
    {
      v13 = [v8 objectAtIndexedSubscript:0];
      v7->_major = [v13 intValue];

      v14 = [v8 objectAtIndexedSubscript:1];
      v15 = [(MIOVersion *)v7 isAllDigitsInString:v14];

      if (v15)
      {
        v16 = [v8 objectAtIndexedSubscript:1];
        v7->_minor = [v16 intValue];

        v7->_bugfix = 0;
        modifier = v7->_modifier;
        v7->_modifier = &stru_2868CF868;

        if ([v8 count] == 3)
        {
          v18 = [v8 objectAtIndexedSubscript:2];
          if ([(MIOVersion *)v7 isAllDigitsInString:v18])
          {
            v7->_bugfix = [v18 intValue];
          }

          else
          {
            decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v20 = [v18 rangeOfCharacterFromSet:decimalDigitCharacterSet];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (error)
              {
                *error = [MEMORY[0x277CCA9B8] internalErrorWithMessage:0 code:-1];
              }

              goto LABEL_7;
            }

            decimalDigitCharacterSet2 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            v22 = [v18 stringByTrimmingCharactersInSet:decimalDigitCharacterSet2];
            v23 = v7->_modifier;
            v7->_modifier = v22;

            decimalDigitCharacterSet3 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
            invertedSet = [decimalDigitCharacterSet3 invertedSet];
            v26 = [v18 stringByTrimmingCharactersInSet:invertedSet];
            v7->_bugfix = [v26 intValue];
          }
        }

LABEL_24:
        v10 = v7;
        goto LABEL_25;
      }

      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277CCA9B8] internalErrorWithMessage:0 code:-1];
    goto LABEL_6;
  }

  if (error)
  {
    v9 = [MEMORY[0x277CCA9B8] internalWarningWithMessage:0 code:-1];
LABEL_6:
    *error = v9;
  }

LABEL_7:

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)getVersionAsString
{
  bugfix = self->_bugfix;
  v4 = [(NSString *)self->_modifier length];
  major = self->_major;
  minor = self->_minor;
  if (bugfix)
  {
    v7 = self->_bugfix;
    if (v4)
    {
      modifier = self->_modifier;
LABEL_6:
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d%@", major, minor, v7, modifier];
      goto LABEL_9;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d", major, self->_minor, v7, v12];
  }

  else
  {
    if (v4)
    {
      modifier = self->_modifier;
      v7 = self->_bugfix;
      goto LABEL_6;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", self->_major, minor, v11, v12];
  }

  v9 = LABEL_9:;

  return v9;
}

- (int64_t)compareToVersion:(id)version
{
  versionCopy = version;
  if (!versionCopy)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Cannot compare with nil object." userInfo:0];
    objc_exception_throw(v15);
  }

  major = [(MIOVersion *)self major];
  if (major < [versionCopy major])
  {
    goto LABEL_3;
  }

  major2 = [(MIOVersion *)self major];
  if (major2 > [versionCopy major])
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  minor = [(MIOVersion *)self minor];
  if (minor >= [versionCopy minor])
  {
    minor2 = [(MIOVersion *)self minor];
    if (minor2 > [versionCopy minor])
    {
      goto LABEL_5;
    }

    bugfix = [(MIOVersion *)self bugfix];
    if (bugfix >= [versionCopy bugfix])
    {
      bugfix2 = [(MIOVersion *)self bugfix];
      if (bugfix2 <= [versionCopy bugfix])
      {
        modifier = [(MIOVersion *)self modifier];
        modifier2 = [versionCopy modifier];
        v6 = [modifier compare:modifier2];

        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_3:
  v6 = -1;
LABEL_6:

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  getVersionAsString = [(MIOVersion *)self getVersionAsString];
  v4 = [v2 stringWithFormat:@"Version: %@", getVersionAsString];

  return v4;
}

- (BOOL)isAllDigitsInString:(id)string
{
  stringCopy = string;
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v6 = [stringCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(stringCopy, "length") != 0;
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MIOVersion allocWithZone:zone];
  getVersionAsString = [(MIOVersion *)self getVersionAsString];
  v10 = 0;
  v6 = [(MIOVersion *)v4 initWithVersionString:getVersionAsString error:&v10];
  v7 = v10;

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot copy version %@", v7];
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MIOVersion *)self isEqualToVersion:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  getVersionAsString = [(MIOVersion *)self getVersionAsString];
  v3 = [getVersionAsString hash];

  return v3;
}

+ (id)pre3_15_0_Mapping
{
  if (+[MIOVersion pre3_15_0_Mapping]::onceToken != -1)
  {
    +[MIOVersion pre3_15_0_Mapping];
  }

  v3 = +[MIOVersion pre3_15_0_Mapping]::pre3_15_0_Mapping;

  return v3;
}

void __31__MIOVersion_pre3_15_0_Mapping__block_invoke()
{
  v4[15] = *MEMORY[0x277D85DE8];
  v4[0] = @"mdta/com.apple.trackStreamType";
  v0 = [@"mdta/com.apple.track_kind" stringByAppendingFormat:@"_%@", @"metadata", @"mdta/com.apple.track_kind"];
  v3[1] = v0;
  v4[1] = @"mdta/com.apple.metadataTrackType";
  v4[2] = @"mdta/com.apple.MOVStreamIO.stateMetadataIdentifier";
  v3[2] = @"mdta/com.apple.framework.state.MOVStreamIO";
  v3[3] = @"version";
  v4[3] = @"mdta/com.apple.MOVStreamIO.versionKey";
  v4[4] = @"mdta/com.apple.MOVStreamIO.defaultOptions";
  v3[4] = @"default_options";
  v3[5] = @"mdta/com.apple.stream_sample_format";
  v4[5] = @"mdta/com.apple.trackStreamPixelFormat";
  v4[6] = @"mdta/com.apple.trackStreamEncodedPixelFormat";
  v3[6] = @"mdta/com.apple.stream_encoded_sample_format";
  v3[7] = @"mdta/com.apple.stream_sample_attachments_serialization_mode";
  v4[7] = @"mdta/com.apple.trackStreamAttachmentsSerializationMode";
  v4[8] = @"mdta/com.apple.trackTypeInfo";
  v3[8] = @"mdta/com.apple.stream_type_info";
  v3[9] = @"mdta/com.apple.stream_related_to_stream";
  v4[9] = @"mdta/com.apple.trackStreamRelatedToStream";
  v4[10] = @"mdta/com.apple.trackStreamRelationSpecifier";
  v3[10] = @"mdta/com.apple.stream_relation_specifier";
  v3[11] = @"mdta/com.apple.stream_sample_exact_bytes_per_row";
  v4[11] = @"mdta/com.apple.exactBytesPerRow";
  v4[12] = @"mdta/com.apple.RawBayerRearrangeType";
  v3[12] = @"mdta/com.apple.stream_raw_bayer_rearrange_type";
  v3[13] = @"mdta/com.apple.stream_sample_attachments";
  v3[14] = @"mdta/com.apple.metadata_stream_item";
  v4[13] = @"mdta/com.apple.rawSampleBufferAttachmentDict";
  v4[14] = @"mdta/com.apple.metadataDict";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = +[MIOVersion pre3_15_0_Mapping]::pre3_15_0_Mapping;
  +[MIOVersion pre3_15_0_Mapping]::pre3_15_0_Mapping = v1;
}

+ (id)allVersionedKeysForKey:(id)key modifier:(id)modifier
{
  keyCopy = key;
  modifierCopy = modifier;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v7 addObject:keyCopy];
  if (modifierCopy)
  {
    modifierCopy = [keyCopy stringByAppendingFormat:@"_%@", modifierCopy];

    keyCopy = modifierCopy;
  }

  v9 = +[MIOVersion pre3_15_0_Mapping];
  v10 = [v9 objectForKey:keyCopy];

  if (v10)
  {
    [v7 addObject:v10];
  }

  return v7;
}

- (id)versionedKey:(id)key modifier:(id)modifier
{
  keyCopy = key;
  modifierCopy = modifier;
  if ([MIOVersion versionedKey:modifier:]::onceToken != -1)
  {
    [MIOVersion versionedKey:modifier:];
  }

  if ([(MIOVersion *)self compareToVersion:[MIOVersion versionedKey:modifier:]::ref3150Version]!= -1)
  {
    v8 = 0;
LABEL_5:
    v9 = keyCopy;
    keyCopy = 0;
    goto LABEL_6;
  }

  v8 = +[MIOVersion pre3_15_0_Mapping];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ([modifierCopy length])
  {
    modifierCopy = [keyCopy stringByAppendingFormat:@"_%@", modifierCopy];

    keyCopy = modifierCopy;
  }

  v9 = [v8 objectForKey:keyCopy];
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

uint64_t __36__MIOVersion_versionedKey_modifier___block_invoke()
{
  [MIOVersion versionedKey:modifier:]::ref3150Version = [[MIOVersion alloc] initWithVersionString:@"3.15.0" error:0];

  return MEMORY[0x2821F96F8]();
}

@end