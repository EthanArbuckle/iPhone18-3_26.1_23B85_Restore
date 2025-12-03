@interface WatchSetupExtendedMetadata
- (WatchSetupExtendedMetadata)initWithPackedExtendedMetadataData:(id)data;
- (WatchSetupExtendedMetadata)initWithPairingVersion:(unsigned __int8)version productVersionMajor:(unsigned __int8)major productVersionMinor:(unsigned __int8)minor postFailSafeObliteration:(BOOL)obliteration encodedSystemVersion:(unsigned int)systemVersion;
- (id)packedExtendedMetadataData;
@end

@implementation WatchSetupExtendedMetadata

- (WatchSetupExtendedMetadata)initWithPairingVersion:(unsigned __int8)version productVersionMajor:(unsigned __int8)major productVersionMinor:(unsigned __int8)minor postFailSafeObliteration:(BOOL)obliteration encodedSystemVersion:(unsigned int)systemVersion
{
  if ([WatchSetupExtendedMetadata _consistencyCheckForPairingVersion:"_consistencyCheckForPairingVersion:productVersionMajor:productVersionMinor:postFailSafeObliteration:encodedSystemVersion:" productVersionMajor:? productVersionMinor:? postFailSafeObliteration:? encodedSystemVersion:?])
  {
    v16.receiver = self;
    v16.super_class = WatchSetupExtendedMetadata;
    v13 = [(WatchSetupExtendedMetadata *)&v16 init];
    if (v13)
    {
      v13->_pairingVersion = version;
      v13->_productVersionMajor = major;
      v13->_productVersionMinor = minor;
      v13->_postFailSafeObliteration = obliteration;
      v13->_encodedSystemVersion = systemVersion;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WatchSetupExtendedMetadata)initWithPackedExtendedMetadataData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] > 6)
  {
    v19.receiver = self;
    v19.super_class = WatchSetupExtendedMetadata;
    v9 = [(WatchSetupExtendedMetadata *)&v19 init];
    if (v9)
    {
      *&buf[3] = 0;
      *buf = 0;
      [dataCopy getBytes:buf length:7];
      v10 = buf[0];
      v9->_pairingVersion = buf[0] >> 2;
      v11 = buf[1];
      v9->_productVersionMajor = (buf[1] >> 3) & 0x9F | (32 * (v10 & 3));
      v12 = buf[2];
      v9->_productVersionMinor = (buf[2] >> 4) & 0x8F | (16 * (v11 & 7));
      v9->_postFailSafeObliteration = (v12 & 8) != 0;
      HIDWORD(v14) = buf[5];
      LODWORD(v14) = buf[6] << 24;
      v13 = v14 >> 27;
      HIDWORD(v14) = buf[4];
      LODWORD(v14) = buf[5] << 24;
      v15 = ((v14 >> 27) << 16) | (v13 << 24);
      HIDWORD(v14) = buf[3];
      LODWORD(v14) = buf[4] << 24;
      v16 = v15 & 0xFFFF00FF | ((v14 >> 27) << 8);
      HIDWORD(v14) = v12;
      LODWORD(v14) = buf[3] << 24;
      v9->_encodedSystemVersion = bswap32(v16 & 0xFFFFFF00 | (v14 >> 27));
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v5 = nr_framework_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = nr_framework_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = 7;
        v21 = 2048;
        v22 = [dataCopy length];
        _os_log_error_impl(&dword_1E0ADF000, v7, OS_LOG_TYPE_ERROR, "Incorrect size of packed extended metadata, expecting >= %lu but got %lu", buf, 0x16u);
      }
    }

    selfCopy = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)packedExtendedMetadataData
{
  productVersionMajor = self->_productVersionMajor;
  v10[0] = (4 * self->_pairingVersion) | (productVersionMajor >> 5) & 3;
  v3 = 8 * productVersionMajor;
  productVersionMinor = self->_productVersionMinor;
  v10[1] = v3 & 0xF8 | (productVersionMinor >> 4) & 7;
  v5 = 16 * productVersionMinor;
  v6 = bswap32(self->_encodedSystemVersion);
  v10[2] = v5 & 0xF8 | (v6 >> 5) | (8 * self->_postFailSafeObliteration);
  HIDWORD(v7) = v6;
  LODWORD(v7) = v6 << 16;
  v10[3] = v7 >> 29;
  HIDWORD(v7) = v6 >> 8;
  LODWORD(v7) = v6 << 8;
  v10[4] = v7 >> 29;
  HIDWORD(v7) = HIWORD(v6);
  LODWORD(v7) = v6;
  v10[5] = v7 >> 29;
  v10[6] = (v6 >> 21) & 0xF8;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v10 length:7];

  return v8;
}

@end