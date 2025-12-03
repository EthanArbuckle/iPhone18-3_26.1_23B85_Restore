@interface UARPSuperBinaryAssetTLV
+ (id)decomposeTLVs:(id)vs;
+ (id)findTLVWithType:(unint64_t)type tlvs:(id)tlvs;
+ (id)findTLVsWithType:(unint64_t)type tlvs:(id)tlvs;
- (NSArray)valueAsTLVs;
- (NSData)valueAsData;
- (NSNumber)valueAsNumber;
- (NSString)valueAsString;
- (NSURL)valueAsURL;
- (UARPAssetVersion)valueAsVersion;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type dataValue:(id)value;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type stringValue:(id)value;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type tagValue:(id)value;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type tlvLength:(unint64_t)length tlvValue:(void *)value;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt16:(unsigned __int16)int16;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt32:(unsigned int)int32;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt64:(unint64_t)int64;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt8:(unsigned __int8)int8;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type urlValue:(id)value;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type version:(UARPVersion *)version;
- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type versionInfo:(uarpPayloadVersionInfo *)info;
- (id)description;
- (id)generateTLV:(id *)v;
@end

@implementation UARPSuperBinaryAssetTLV

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt8:(unsigned __int8)int8
{
  v7.receiver = self;
  v7.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_val8 = int8;
    result->_valueType = 0;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt16:(unsigned __int16)int16
{
  v7.receiver = self;
  v7.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_val16 = int16;
    result->_valueType = 1;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt32:(unsigned int)int32
{
  v7.receiver = self;
  v7.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_val32 = int32;
    result->_valueType = 2;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type unsignedInt64:(unint64_t)int64
{
  v7.receiver = self;
  v7.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_val64 = int64;
    result->_valueType = 3;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type dataValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = UARPSuperBinaryAssetTLV;
  v8 = [(UARPSuperBinaryAssetTLV *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_data, value);
    v9->_valueType = 4;
  }

  return v9;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type stringValue:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = UARPSuperBinaryAssetTLV;
  v7 = [(UARPSuperBinaryAssetTLV *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [valueCopy copy];
    string = v8->_string;
    v8->_string = v9;

    v8->_valueType = 5;
  }

  return v8;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type tagValue:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = UARPSuperBinaryAssetTLV;
  v7 = [(UARPSuperBinaryAssetTLV *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [valueCopy copy];
    string = v8->_string;
    v8->_string = v9;

    v8->_valueType = 7;
  }

  return v8;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type urlValue:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = UARPSuperBinaryAssetTLV;
  v7 = [(UARPSuperBinaryAssetTLV *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [valueCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v8->_valueType = 6;
  }

  return v8;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type version:(UARPVersion *)version
{
  v7.receiver = self;
  v7.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_version = *version;
    result->_valueType = 8;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type versionInfo:(uarpPayloadVersionInfo *)info
{
  v9.receiver = self;
  v9.super_class = UARPSuperBinaryAssetTLV;
  result = [(UARPSuperBinaryAssetTLV *)&v9 init];
  if (result)
  {
    result->_type = type;
    v7 = *&info->tag.char1;
    v8 = *&info->activeVersion.build;
    result->_versionInfo.stagedVersion.build = info->stagedVersion.build;
    *&result->_versionInfo.activeVersion.build = v8;
    *&result->_versionInfo.tag.char1 = v7;
    result->_valueType = 9;
  }

  return result;
}

- (UARPSuperBinaryAssetTLV)initWithType:(unint64_t)type tlvLength:(unint64_t)length tlvValue:(void *)value
{
  if (!value)
  {
    goto LABEL_44;
  }

  if (type > 3291140095)
  {
    if (type > 3436347651)
    {
      switch(type)
      {
        case 0xCCD28104uLL:
        case 0xCCD2810CuLL:
        case 0xCCD2810FuLL:
        case 0xCCD28119uLL:
        case 0xCCD2811CuLL:
          goto LABEL_39;
        case 0xCCD28105uLL:
        case 0xCCD28106uLL:
        case 0xCCD28107uLL:
        case 0xCCD28108uLL:
        case 0xCCD28109uLL:
        case 0xCCD2810AuLL:
        case 0xCCD28113uLL:
        case 0xCCD28115uLL:
        case 0xCCD28116uLL:
        case 0xCCD28118uLL:
        case 0xCCD2811DuLL:
          goto LABEL_11;
        case 0xCCD2810BuLL:
        case 0xCCD2810DuLL:
        case 0xCCD2810EuLL:
        case 0xCCD28110uLL:
        case 0xCCD28112uLL:
        case 0xCCD28117uLL:
        case 0xCCD2811BuLL:
          goto LABEL_32;
        case 0xCCD28111uLL:
        case 0xCCD28114uLL:
          goto LABEL_47;
        case 0xCCD2811AuLL:
          goto LABEL_5;
        case 0xCCD2811EuLL:
          v8 = [MEMORY[0x277CBEA90] dataWithBytes:value length:length];
          v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
          if (!v12)
          {
            goto LABEL_54;
          }

          v13 = [UARPSuperBinaryAssetTLV alloc];
          typeCopy = 3436347678;
          goto LABEL_49;
        default:
          if (type - 4042160640u < 2)
          {
            goto LABEL_47;
          }

          if (type != 4042160643)
          {
            goto LABEL_11;
          }

LABEL_5:
          if (length != 1)
          {
            goto LABEL_44;
          }

          v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type unsignedInt8:*value];
          break;
      }

      goto LABEL_41;
    }

    if (type == 3291140096 || type == 3291140105)
    {
LABEL_39:
      if (length == 4)
      {
        v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type unsignedInt32:uarpHtonl(*value)];
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    if (type == 3291140106)
    {
      goto LABEL_47;
    }

LABEL_11:
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:value length:length];
    v9 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type dataValue:v8];
LABEL_56:

    goto LABEL_57;
  }

  if (type > 2158597887)
  {
    switch(type)
    {
      case 0x88B29102uLL:
      case 0x88B29115uLL:
      case 0x88B29116uLL:
      case 0x88B29117uLL:
      case 0x88B29119uLL:
      case 0x88B2911AuLL:
      case 0x88B29123uLL:
      case 0x88B29124uLL:
        goto LABEL_32;
      case 0x88B29103uLL:
      case 0x88B29112uLL:
      case 0x88B2911FuLL:
      case 0x88B29134uLL:
      case 0x88B29136uLL:
        goto LABEL_47;
      case 0x88B29104uLL:
      case 0x88B29105uLL:
      case 0x88B29109uLL:
      case 0x88B2910AuLL:
      case 0x88B2910BuLL:
      case 0x88B2911DuLL:
      case 0x88B2911EuLL:
      case 0x88B29120uLL:
      case 0x88B29125uLL:
        goto LABEL_39;
      case 0x88B29106uLL:
      case 0x88B2911BuLL:
        if (length != 8)
        {
          goto LABEL_44;
        }

        v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type unsignedInt64:uarpHtonll(*value)];
        break;
      case 0x88B29107uLL:
      case 0x88B29108uLL:
      case 0x88B2910CuLL:
      case 0x88B2910DuLL:
      case 0x88B2910EuLL:
      case 0x88B2910FuLL:
      case 0x88B29110uLL:
      case 0x88B29111uLL:
      case 0x88B29113uLL:
      case 0x88B29114uLL:
      case 0x88B2911CuLL:
      case 0x88B29129uLL:
      case 0x88B2912AuLL:
      case 0x88B2912BuLL:
      case 0x88B2912CuLL:
      case 0x88B2912DuLL:
      case 0x88B2912EuLL:
      case 0x88B2912FuLL:
      case 0x88B29130uLL:
      case 0x88B29135uLL:
        goto LABEL_11;
      case 0x88B29118uLL:
      case 0x88B29121uLL:
      case 0x88B29122uLL:
      case 0x88B29126uLL:
      case 0x88B29127uLL:
      case 0x88B29128uLL:
      case 0x88B29131uLL:
      case 0x88B29132uLL:
      case 0x88B29133uLL:
        goto LABEL_5;
      default:
        if (type - 2158597888u >= 3)
        {
          goto LABEL_11;
        }

        goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (type <= 1155952127)
  {
    if (type > 76079622)
    {
      if (type <= 538280447)
      {
        if (type - 272691969 >= 2)
        {
          if (type != 76079623)
          {
            goto LABEL_11;
          }

          goto LABEL_23;
        }

LABEL_47:
        v8 = [MEMORY[0x277CBEA90] dataWithBytes:value length:length];
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        if (v12)
        {
          v13 = [UARPSuperBinaryAssetTLV alloc];
          typeCopy = type;
LABEL_49:
          v9 = [(UARPSuperBinaryAssetTLV *)v13 initWithType:typeCopy stringValue:v12];
        }

        else
        {
LABEL_54:
          v9 = 0;
        }

        goto LABEL_56;
      }

      if (type == 538280448)
      {
        goto LABEL_47;
      }

      v10 = 538280449;
LABEL_38:
      if (type == v10)
      {
        goto LABEL_39;
      }

      goto LABEL_11;
    }

    if (type - 76079617 < 2)
    {
      goto LABEL_47;
    }

    if (type != 76079616 && type != 76079619)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

  if (type <= 1619725823)
  {
    if (type == 1155952128)
    {
      v17 = 0u;
      *&v16[4] = 0u;
      v11 = (value + 20);
      *v16 = *value;
      uarpVersionEndianSwap(value + 1, &v16[4]);
      uarpVersionEndianSwap(v11, &v17);
      v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:1155952128 versionInfo:v16];
      goto LABEL_41;
    }

    if (type == 1155952129)
    {
      goto LABEL_47;
    }

    v10 = 1483412481;
    goto LABEL_38;
  }

  if (type - 1619725824 > 8)
  {
    goto LABEL_11;
  }

  if (((1 << type) & 0x109) != 0)
  {
LABEL_32:
    if (length == 2)
    {
      v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type unsignedInt16:uarpHtons(*value)];
      goto LABEL_41;
    }

LABEL_44:
    v9 = 0;
    goto LABEL_57;
  }

  if (((1 << type) & 6) != 0)
  {
    goto LABEL_47;
  }

  if (type != 1619725831)
  {
    goto LABEL_11;
  }

LABEL_23:
  *v16 = 0uLL;
  uarpVersionEndianSwap(value, v16);
  v7 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type version:v16];
LABEL_41:
  v9 = v7;
LABEL_57:

  return v9;
}

- (NSString)valueAsString
{
  if (self->_valueType == 5)
  {
    v3 = self->_string;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)valueAsURL
{
  if (self->_valueType == 6)
  {
    v3 = self->_url;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)valueAsNumber
{
  v3 = 0;
  valueType = self->_valueType;
  if (valueType > 1)
  {
    if (valueType == 2)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_val32];
    }

    else if (valueType == 3)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_val64];
    }
  }

  else if (valueType)
  {
    if (valueType == 1)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_val16];
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_val8];
  }

  return v3;
}

- (NSData)valueAsData
{
  if (self->_valueType == 4)
  {
    v3 = self->_data;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UARPAssetVersion)valueAsVersion
{
  if (self->_valueType == 8)
  {
    v3 = [[UARPAssetVersion alloc] initWithMajorVersion:self->_version.major minorVersion:self->_version.minor releaseVersion:self->_version.release buildVersion:self->_version.build];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)valueAsTLVs
{
  if (self->_valueType == 4)
  {
    v2 = [UARPSuperBinaryAssetTLV decomposeTLVs:self->_data];
    v3 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)generateTLV:(id *)v
{
  v15 = 0;
  v4 = 0;
  LODWORD(v15) = uarpHtonl(self->_type);
  valueType = self->_valueType;
  if (valueType <= 4)
  {
    if (valueType <= 1)
    {
      if (valueType)
      {
        if (valueType != 1)
        {
          goto LABEL_25;
        }

        HIDWORD(v15) = uarpHtonl(2u);
        v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v4 appendBytes:&v15 length:8];
        *v13 = uarpHtons(self->_val16);
        p_val8 = v13;
        v7 = v4;
        v8 = 2;
      }

      else
      {
        HIDWORD(v15) = uarpHtonl(1u);
        v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v4 appendBytes:&v15 length:8];
        p_val8 = &self->_val8;
        v7 = v4;
        v8 = 1;
      }

      goto LABEL_24;
    }

    if (valueType != 2)
    {
      if (valueType != 3)
      {
        HIDWORD(v15) = uarpHtonl([(NSData *)self->_data length]);
        v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [v4 appendBytes:&v15 length:8];
        [v4 appendData:self->_data];
        goto LABEL_25;
      }

      HIDWORD(v15) = uarpHtonl(8u);
      v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v4 appendBytes:&v15 length:8];
      *v13 = uarpHtonll(self->_val64);
      p_val8 = v13;
      v7 = v4;
      v8 = 8;
      goto LABEL_24;
    }

    HIDWORD(v15) = uarpHtonl(4u);
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v4 appendBytes:&v15 length:8];
    *v13 = uarpHtonl(self->_val32);
LABEL_21:
    p_val8 = v13;
    v7 = v4;
    v8 = 4;
LABEL_24:
    [v7 appendBytes:p_val8 length:{v8, *v13}];
    goto LABEL_25;
  }

  if (valueType <= 6)
  {
    if (valueType != 5)
    {
      v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_url options:1 error:0];
      HIDWORD(v15) = uarpHtonl([v9 length]);
      v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v4 appendBytes:&v15 length:8];
      [v4 appendBytes:objc_msgSend(v9 length:{"bytes"), objc_msgSend(v9, "length")}];

      goto LABEL_25;
    }

    HIDWORD(v15) = uarpHtonl([(NSString *)self->_string length]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v4 appendBytes:&v15 length:8];
    uTF8String = [(NSString *)self->_string UTF8String];
    v8 = [(NSString *)self->_string length];
    v7 = v4;
    p_val8 = uTF8String;
    goto LABEL_24;
  }

  if (valueType != 7)
  {
    if (valueType == 8)
    {
      HIDWORD(v15) = uarpHtonl(0x10u);
      v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v4 appendBytes:&v15 length:8];
      *v13 = 0;
      *&v13[8] = 0;
      uarpVersionEndianSwap(&self->_version.major, v13);
      p_val8 = v13;
      v7 = v4;
      v8 = 16;
    }

    else
    {
      if (valueType != 9)
      {
        goto LABEL_25;
      }

      HIDWORD(v15) = uarpHtonl(0x24u);
      v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
      [v4 appendBytes:&v15 length:8];
      v14 = 0u;
      *&v13[4] = 0u;
      *v13 = self->_versionInfo.tag;
      uarpVersionEndianSwap(&self->_versionInfo.activeVersion.major, &v13[4]);
      uarpVersionEndianSwap(&self->_versionInfo.stagedVersion.major, &v14);
      p_val8 = v13;
      v7 = v4;
      v8 = 36;
    }

    goto LABEL_24;
  }

  uTF8String2 = [(NSString *)self->_string UTF8String];
  if ([(NSString *)self->_string length]== 4)
  {
    *v13 = uarpPayloadTagPack(uTF8String2);
    HIDWORD(v15) = uarpHtonl(4u);
    v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [v4 appendBytes:&v15 length:{8, *v13}];
    goto LABEL_21;
  }

  v4 = 0;
LABEL_25:

  return v4;
}

+ (id)decomposeTLVs:(id)vs
{
  v25 = *MEMORY[0x277D85DE8];
  vsCopy = vs;
  v18 = 0;
  v4 = objc_opt_new();
  if ([vsCopy length])
  {
    v6 = 0;
    v7 = MEMORY[0x277D86220];
    *&v5 = 67109634;
    v16 = v5;
    while (1)
    {
      [vsCopy getBytes:&v18 range:{v6, 8, v16}];
      LODWORD(v18) = uarpHtonl(v18);
      v8 = uarpHtonl(HIDWORD(v18));
      HIDWORD(v18) = v8;
      if (!(v18 | v8))
      {
        break;
      }

      v9 = v6 + 8;
      v10 = v8;
      v11 = [vsCopy subdataWithRange:{v9, v8}];
      v12 = [UARPSuperBinaryAssetTLV alloc];
      v13 = -[UARPSuperBinaryAssetTLV initWithType:tlvLength:tlvValue:](v12, "initWithType:tlvLength:tlvValue:", v18, HIDWORD(v18), [v11 bytes]);
      if (v13)
      {
        [v4 addObject:v13];
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = v16;
        v20 = v18;
        v21 = 1024;
        v22 = HIDWORD(v18);
        v23 = 2112;
        selfCopy = self;
        _os_log_error_impl(&dword_247AA7000, v7, OS_LOG_TYPE_ERROR, "attempting to add a nil tlv (T=0x%08x, L=%u) to superbinary %@", buf, 0x18u);
      }

      v6 = v9 + v10;

      if (v6 >= [vsCopy length])
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[UARPSuperBinaryAssetTLV decomposeTLVs:];
    }
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"TLV - "];
  [v3 appendFormat:@"Type = 0x%08x", self->_type];
  [v3 appendFormat:@", "];
  valueType = self->_valueType;
  if (valueType > 4)
  {
    if (valueType <= 6)
    {
      if (valueType != 5)
      {
        v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:self->_url options:1 error:0];
        [v3 appendFormat:@"Length = %lu", objc_msgSend(v6, "length")];
        [v3 appendFormat:@", "];
        [v3 appendFormat:@"Value = %@", self->_url];

        goto LABEL_24;
      }

      [v3 appendFormat:@"Length = %lu", -[NSString length](self->_string, "length")];
    }

    else
    {
      if (valueType != 7)
      {
        if (valueType == 8)
        {
          [v3 appendFormat:@"Length = %lu", 16];
          [v3 appendFormat:@", "];
          [v3 appendFormat:@"Value = %d.%d.%d.%d", self->_version.major, self->_version.minor, self->_version.release, self->_version.build];
        }

        else if (valueType == 9)
        {
          [v3 appendFormat:@"Length = %lu", 36];
          [v3 appendFormat:@", "];
          [v3 appendFormat:@"Payload Tag = %c%c%c%c, ", self->_versionInfo.tag.char1, self->_versionInfo.tag.char2, self->_versionInfo.tag.char3, self->_versionInfo.tag.char4];
          [v3 appendFormat:@"Active Firmware Version = %d.%d.%d.%d, ", self->_versionInfo.activeVersion.major, self->_versionInfo.activeVersion.minor, self->_versionInfo.activeVersion.release, self->_versionInfo.activeVersion.build];
          [v3 appendFormat:@"Staged Firmware Version = %d.%d.%d.%d, ", self->_versionInfo.stagedVersion.major, self->_versionInfo.stagedVersion.minor, self->_versionInfo.stagedVersion.release, self->_versionInfo.stagedVersion.build];
        }

        goto LABEL_24;
      }

      [v3 appendFormat:@"Length = 4", v8];
    }

    [v3 appendFormat:@", "];
    string = self->_string;
    goto LABEL_21;
  }

  if (valueType <= 1)
  {
    if (valueType)
    {
      if (valueType == 1)
      {
        [v3 appendFormat:@"Length = %lu", 2];
        [v3 appendFormat:@", "];
        [v3 appendFormat:@"Value = %hu", self->_val16, v9, v10, v11];
      }
    }

    else
    {
      [v3 appendFormat:@"Length = %lu", 1];
      [v3 appendFormat:@", "];
      [v3 appendFormat:@"Value = %hhu", self->_val8, v9, v10, v11];
    }
  }

  else
  {
    if (valueType == 2)
    {
      [v3 appendFormat:@"Length = %lu", 4];
      [v3 appendFormat:@", "];
      [v3 appendFormat:@"Value = %u", self->_val32, v9, v10, v11];
      goto LABEL_24;
    }

    if (valueType != 3)
    {
      [v3 appendFormat:@"Length = %lu", -[NSData length](self->_data, "length")];
      [v3 appendFormat:@", "];
      string = self->_data;
LABEL_21:
      [v3 appendFormat:@"Value = %@", string, v9, v10, v11];
      goto LABEL_24;
    }

    [v3 appendFormat:@"Length = %lu", 8];
    [v3 appendFormat:@", "];
    [v3 appendFormat:@"Value = %llu", self->_val64, v9, v10, v11];
  }

LABEL_24:

  return v3;
}

+ (id)findTLVWithType:(unint64_t)type tlvs:(id)tlvs
{
  v4 = [UARPSuperBinaryAssetTLV findTLVsWithType:type tlvs:tlvs];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)findTLVsWithType:(unint64_t)type tlvs:(id)tlvs
{
  v21 = *MEMORY[0x277D85DE8];
  tlvsCopy = tlvs;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = tlvsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == type)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end