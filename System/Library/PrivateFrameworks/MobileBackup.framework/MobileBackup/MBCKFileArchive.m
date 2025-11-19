@interface MBCKFileArchive
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBirth:(BOOL)a3;
- (void)setHasContentCompressionMethod:(BOOL)a3;
- (void)setHasContentEncodingMethod:(BOOL)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasFileType:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasGroupID:(BOOL)a3;
- (void)setHasIsMMCSEncryptedOnly:(BOOL)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasModified:(BOOL)a3;
- (void)setHasProtectionClass:(BOOL)a3;
- (void)setHasResourcesSize:(BOOL)a3;
- (void)setHasSize:(BOOL)a3;
- (void)setHasSizeBeforeCopy:(BOOL)a3;
- (void)setHasSizeBeforeEncoding:(BOOL)a3;
- (void)setHasSourceDeviceInode:(BOOL)a3;
- (void)setHasStashedAssetIsDecrypted:(BOOL)a3;
- (void)setHasStatusChanged:(BOOL)a3;
- (void)setHasUserID:(BOOL)a3;
- (void)setHasVolumeType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBCKFileArchive

- (void)setHasBirth:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasModified:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasStatusChanged:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasProtectionClass:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasFileType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasGroupID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasUserID:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasDeleted:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasSizeBeforeCopy:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasStashedAssetIsDecrypted:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasResourcesSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasFlags:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasContentEncodingMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasContentCompressionMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasSizeBeforeEncoding:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasIsMMCSEncryptedOnly:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasSourceDeviceInode:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasVolumeType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MBCKFileArchive;
  v3 = [(MBCKFileArchive *)&v7 description];
  v4 = [(MBCKFileArchive *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  fileID = self->_fileID;
  if (fileID)
  {
    [v3 setObject:fileID forKey:@"fileID"];
  }

  domainName = self->_domainName;
  if (domainName)
  {
    [v4 setObject:domainName forKey:@"domainName"];
  }

  relativePath = self->_relativePath;
  if (relativePath)
  {
    [v4 setObject:relativePath forKey:@"relativePath"];
  }

  absolutePath = self->_absolutePath;
  if (absolutePath)
  {
    [v4 setObject:absolutePath forKey:@"absolutePath"];
  }

  linkTarget = self->_linkTarget;
  if (linkTarget)
  {
    [v4 setObject:linkTarget forKey:@"linkTarget"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v4 setObject:signature forKey:@"signature"];
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    v30 = [NSNumber numberWithInt:self->_birth];
    [v4 setObject:v30 forKey:@"birth"];

    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_15:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  v31 = [NSNumber numberWithInt:self->_modified];
  [v4 setObject:v31 forKey:@"modified"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_16:
    v12 = [NSNumber numberWithInt:self->_statusChanged];
    [v4 setObject:v12 forKey:@"statusChanged"];
  }

LABEL_17:
  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v4 setObject:encryptionKey forKey:@"encryptionKey"];
  }

  v14 = self->_has;
  if ((*&v14 & 0x4000) != 0)
  {
    v32 = [NSNumber numberWithInt:self->_protectionClass];
    [v4 setObject:v32 forKey:@"protectionClass"];

    v14 = self->_has;
    if ((*&v14 & 4) == 0)
    {
LABEL_21:
      if ((*&v14 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_60;
    }
  }

  else if ((*&v14 & 4) == 0)
  {
    goto LABEL_21;
  }

  v33 = [NSNumber numberWithLongLong:self->_size];
  [v4 setObject:v33 forKey:@"size"];

  v14 = self->_has;
  if ((*&v14 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  v34 = [NSNumber numberWithInt:self->_fileType];
  [v4 setObject:v34 forKey:@"fileType"];

  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  v35 = [NSNumber numberWithInt:self->_groupID];
  [v4 setObject:v35 forKey:@"groupID"];

  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  v36 = [NSNumber numberWithInt:self->_userID];
  [v4 setObject:v36 forKey:@"userID"];

  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_63:
  v37 = [NSNumber numberWithInt:self->_mode];
  [v4 setObject:v37 forKey:@"mode"];

  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_26:
    v15 = [NSNumber numberWithBool:self->_deleted];
    [v4 setObject:v15 forKey:@"deleted"];
  }

LABEL_27:
  absolutePathPrefix = self->_absolutePathPrefix;
  if (absolutePathPrefix)
  {
    [v4 setObject:absolutePathPrefix forKey:@"absolutePathPrefix"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v17 = [NSNumber numberWithLongLong:self->_sizeBeforeCopy];
    [v4 setObject:v17 forKey:@"sizeBeforeCopy"];
  }

  subDomain = self->_subDomain;
  if (subDomain)
  {
    [v4 setObject:subDomain forKey:@"subDomain"];
  }

  stashedAssetPath = self->_stashedAssetPath;
  if (stashedAssetPath)
  {
    [v4 setObject:stashedAssetPath forKey:@"stashedAssetPath"];
  }

  stashedResourcePath = self->_stashedResourcePath;
  if (stashedResourcePath)
  {
    [v4 setObject:stashedResourcePath forKey:@"stashedResourcePath"];
  }

  v21 = self->_has;
  if ((*&v21 & 0x100000) != 0)
  {
    v38 = [NSNumber numberWithBool:self->_stashedAssetIsDecrypted];
    [v4 setObject:v38 forKey:@"stashedAssetIsDecrypted"];

    v21 = self->_has;
    if ((*&v21 & 2) == 0)
    {
LABEL_39:
      if ((*&v21 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v21 & 2) == 0)
  {
    goto LABEL_39;
  }

  v39 = [NSNumber numberWithLongLong:self->_resourcesSize];
  [v4 setObject:v39 forKey:@"resourcesSize"];

  v21 = self->_has;
  if ((*&v21 & 0x400) == 0)
  {
LABEL_40:
    if ((*&v21 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_68;
  }

LABEL_67:
  v40 = [NSNumber numberWithUnsignedInt:self->_flags];
  [v4 setObject:v40 forKey:@"flags"];

  v21 = self->_has;
  if ((*&v21 & 0x100) == 0)
  {
LABEL_41:
    if ((*&v21 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_68:
  v41 = [NSNumber numberWithInt:self->_contentEncodingMethod];
  [v4 setObject:v41 forKey:@"contentEncodingMethod"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_42:
    v22 = [NSNumber numberWithInt:self->_contentCompressionMethod];
    [v4 setObject:v22 forKey:@"contentCompressionMethod"];
  }

LABEL_43:
  decodedAssetPath = self->_decodedAssetPath;
  if (decodedAssetPath)
  {
    [v4 setObject:decodedAssetPath forKey:@"decodedAssetPath"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v24 = [NSNumber numberWithLongLong:self->_sizeBeforeEncoding];
    [v4 setObject:v24 forKey:@"sizeBeforeEncoding"];
  }

  sha256Signature = self->_sha256Signature;
  if (sha256Signature)
  {
    [v4 setObject:sha256Signature forKey:@"sha256Signature"];
  }

  v26 = self->_has;
  if ((*&v26 & 0x80000) != 0)
  {
    v42 = [NSNumber numberWithBool:self->_isMMCSEncryptedOnly];
    [v4 setObject:v42 forKey:@"isMMCSEncryptedOnly"];

    v26 = self->_has;
    if ((*&v26 & 1) == 0)
    {
LABEL_51:
      if ((*&v26 & 0x20) == 0)
      {
        goto LABEL_52;
      }

LABEL_72:
      v44 = [NSNumber numberWithLongLong:self->_sourceDeviceInode];
      [v4 setObject:v44 forKey:@"sourceDeviceInode"];

      if ((*&self->_has & 0x20000) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }
  }

  else if ((*&v26 & 1) == 0)
  {
    goto LABEL_51;
  }

  v43 = [NSNumber numberWithLongLong:self->_inode];
  [v4 setObject:v43 forKey:@"inode"];

  v26 = self->_has;
  if ((*&v26 & 0x20) != 0)
  {
    goto LABEL_72;
  }

LABEL_52:
  if ((*&v26 & 0x20000) != 0)
  {
LABEL_53:
    v27 = [NSNumber numberWithUnsignedInt:self->_volumeType];
    [v4 setObject:v27 forKey:@"volumeType"];
  }

LABEL_54:
  v28 = v4;

  return v4;
}

- (BOOL)readFrom:(id)a3
{
  for (i = a3; ; i = a3)
  {
    v6 = [i position];
    if (v6 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v152 = 0;
      v10 = [a3 position] + 1;
      if (v10 >= [a3 position] && (v11 = objc_msgSend(a3, "position") + 1, v11 <= objc_msgSend(a3, "length")))
      {
        v12 = [a3 data];
        [v12 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
      }

      v9 |= (v152 & 0x7F) << v7;
      if ((v152 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [a3 hasError] ? 0 : v9;
LABEL_16:
    if (([a3 hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = PBReaderReadString();
        v16 = 112;
        goto LABEL_212;
      case 2u:
        v15 = PBReaderReadString();
        v16 = 96;
        goto LABEL_212;
      case 3u:
        v15 = PBReaderReadString();
        v16 = 160;
        goto LABEL_212;
      case 4u:
        v15 = PBReaderReadString();
        v16 = 56;
        goto LABEL_212;
      case 6u:
        v15 = PBReaderReadString();
        v16 = 136;
        goto LABEL_212;
      case 7u:
        v15 = PBReaderReadData();
        v16 = 176;
        goto LABEL_212;
      case 8u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *&self->_has |= 0x40u;
        while (1)
        {
          v152 = 0;
          v119 = [a3 position] + 1;
          if (v119 >= [a3 position] && (v120 = objc_msgSend(a3, "position") + 1, v120 <= objc_msgSend(a3, "length")))
          {
            v121 = [a3 data];
            [v121 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v118 |= (v152 & 0x7F) << v116;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v13 = v117++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_290;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v118;
        }

LABEL_290:
        v149 = 72;
        goto LABEL_304;
      case 9u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *&self->_has |= 0x2000u;
        while (1)
        {
          v152 = 0;
          v125 = [a3 position] + 1;
          if (v125 >= [a3 position] && (v126 = objc_msgSend(a3, "position") + 1, v126 <= objc_msgSend(a3, "length")))
          {
            v127 = [a3 data];
            [v127 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v124 |= (v152 & 0x7F) << v122;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v13 = v123++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_294;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v124;
        }

LABEL_294:
        v149 = 148;
        goto LABEL_304;
      case 0xAu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *&self->_has |= 0x8000u;
        while (1)
        {
          v152 = 0;
          v52 = [a3 position] + 1;
          if (v52 >= [a3 position] && (v53 = objc_msgSend(a3, "position") + 1, v53 <= objc_msgSend(a3, "length")))
          {
            v54 = [a3 data];
            [v54 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v51 |= (v152 & 0x7F) << v49;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v13 = v50++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_247;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v51;
        }

LABEL_247:
        v149 = 200;
        goto LABEL_304;
      case 0xBu:
        v15 = PBReaderReadData();
        v16 = 104;
        goto LABEL_212;
      case 0xCu:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *&self->_has |= 0x4000u;
        while (1)
        {
          v152 = 0;
          v64 = [a3 position] + 1;
          if (v64 >= [a3 position] && (v65 = objc_msgSend(a3, "position") + 1, v65 <= objc_msgSend(a3, "length")))
          {
            v66 = [a3 data];
            [v66 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v63 |= (v152 & 0x7F) << v61;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v13 = v62++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_255;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v63;
        }

LABEL_255:
        v149 = 152;
        goto LABEL_304;
      case 0xDu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          v152 = 0;
          v95 = [a3 position] + 1;
          if (v95 >= [a3 position] && (v96 = objc_msgSend(a3, "position") + 1, v96 <= objc_msgSend(a3, "length")))
          {
            v97 = [a3 data];
            [v97 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v94 |= (v152 & 0x7F) << v92;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v13 = v93++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_273;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v94;
        }

LABEL_273:
        v148 = 24;
        goto LABEL_274;
      case 0xEu:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *&self->_has |= 0x200u;
        while (1)
        {
          v152 = 0;
          v83 = [a3 position] + 1;
          if (v83 >= [a3 position] && (v84 = objc_msgSend(a3, "position") + 1, v84 <= objc_msgSend(a3, "length")))
          {
            v85 = [a3 data];
            [v85 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v82 |= (v152 & 0x7F) << v80;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v13 = v81++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_265;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v82;
        }

LABEL_265:
        v149 = 120;
        goto LABEL_304;
      case 0xFu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *&self->_has |= 0x800u;
        while (1)
        {
          v152 = 0;
          v33 = [a3 position] + 1;
          if (v33 >= [a3 position] && (v34 = objc_msgSend(a3, "position") + 1, v34 <= objc_msgSend(a3, "length")))
          {
            v35 = [a3 data];
            [v35 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v32 |= (v152 & 0x7F) << v30;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_235;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_235:
        v149 = 128;
        goto LABEL_304;
      case 0x10u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *&self->_has |= 0x10000u;
        while (1)
        {
          v152 = 0;
          v107 = [a3 position] + 1;
          if (v107 >= [a3 position] && (v108 = objc_msgSend(a3, "position") + 1, v108 <= objc_msgSend(a3, "length")))
          {
            v109 = [a3 data];
            [v109 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v106 |= (v152 & 0x7F) << v104;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v13 = v105++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_282;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v106;
        }

LABEL_282:
        v149 = 216;
        goto LABEL_304;
      case 0x11u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *&self->_has |= 0x1000u;
        while (1)
        {
          v152 = 0;
          v113 = [a3 position] + 1;
          if (v113 >= [a3 position] && (v114 = objc_msgSend(a3, "position") + 1, v114 <= objc_msgSend(a3, "length")))
          {
            v115 = [a3 data];
            [v115 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v112 |= (v152 & 0x7F) << v110;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v13 = v111++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_286;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v112;
        }

LABEL_286:
        v149 = 144;
        goto LABEL_304;
      case 0x12u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *&self->_has |= 0x40000u;
        while (1)
        {
          v152 = 0;
          v137 = [a3 position] + 1;
          if (v137 >= [a3 position] && (v138 = objc_msgSend(a3, "position") + 1, v138 <= objc_msgSend(a3, "length")))
          {
            v139 = [a3 data];
            [v139 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v136 |= (v152 & 0x7F) << v134;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v13 = v135++ >= 9;
          if (v13)
          {
            LOBYTE(v79) = 0;
            goto LABEL_298;
          }
        }

        v79 = (v136 != 0) & ~[a3 hasError];
LABEL_298:
        v150 = 224;
        goto LABEL_299;
      case 0x13u:
        v15 = PBReaderReadString();
        v16 = 64;
        goto LABEL_212;
      case 0x14u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *&self->_has |= 8u;
        while (1)
        {
          v152 = 0;
          v27 = [a3 position] + 1;
          if (v27 >= [a3 position] && (v28 = objc_msgSend(a3, "position") + 1, v28 <= objc_msgSend(a3, "length")))
          {
            v29 = [a3 data];
            [v29 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v26 |= (v152 & 0x7F) << v24;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_231;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_231:
        v148 = 32;
        goto LABEL_274;
      case 0x15u:
        v15 = PBReaderReadString();
        v16 = 208;
        goto LABEL_212;
      case 0x16u:
        v15 = PBReaderReadString();
        v16 = 184;
        goto LABEL_212;
      case 0x17u:
        v15 = PBReaderReadString();
        v16 = 192;
        goto LABEL_212;
      case 0x18u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *&self->_has |= 0x100000u;
        while (1)
        {
          v152 = 0;
          v76 = [a3 position] + 1;
          if (v76 >= [a3 position] && (v77 = objc_msgSend(a3, "position") + 1, v77 <= objc_msgSend(a3, "length")))
          {
            v78 = [a3 data];
            [v78 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v75 |= (v152 & 0x7F) << v73;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v13 = v74++ >= 9;
          if (v13)
          {
            LOBYTE(v79) = 0;
            goto LABEL_261;
          }
        }

        v79 = (v75 != 0) & ~[a3 hasError];
LABEL_261:
        v150 = 226;
        goto LABEL_299;
      case 0x19u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v152 = 0;
          v58 = [a3 position] + 1;
          if (v58 >= [a3 position] && (v59 = objc_msgSend(a3, "position") + 1, v59 <= objc_msgSend(a3, "length")))
          {
            v60 = [a3 data];
            [v60 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v57 |= (v152 & 0x7F) << v55;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v13 = v56++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_251;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v57;
        }

LABEL_251:
        v148 = 16;
        goto LABEL_274;
      case 0x1Au:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *&self->_has |= 0x400u;
        while (1)
        {
          v152 = 0;
          v101 = [a3 position] + 1;
          if (v101 >= [a3 position] && (v102 = objc_msgSend(a3, "position") + 1, v102 <= objc_msgSend(a3, "length")))
          {
            v103 = [a3 data];
            [v103 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v100 |= (v152 & 0x7F) << v98;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v13 = v99++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_278;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v100;
        }

LABEL_278:
        v149 = 124;
        goto LABEL_304;
      case 0x1Bu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *&self->_has |= 0x100u;
        while (1)
        {
          v152 = 0;
          v40 = [a3 position] + 1;
          if (v40 >= [a3 position] && (v41 = objc_msgSend(a3, "position") + 1, v41 <= objc_msgSend(a3, "length")))
          {
            v42 = [a3 data];
            [v42 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v39 |= (v152 & 0x7F) << v37;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_239;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_239:
        v149 = 80;
        goto LABEL_304;
      case 0x1Cu:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        *&self->_has |= 0x80u;
        while (1)
        {
          v152 = 0;
          v144 = [a3 position] + 1;
          if (v144 >= [a3 position] && (v145 = objc_msgSend(a3, "position") + 1, v145 <= objc_msgSend(a3, "length")))
          {
            v146 = [a3 data];
            [v146 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v143 |= (v152 & 0x7F) << v141;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v13 = v142++ >= 9;
          if (v13)
          {
            v36 = 0;
            goto LABEL_303;
          }
        }

        if ([a3 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v143;
        }

LABEL_303:
        v149 = 76;
        goto LABEL_304;
      case 0x1Du:
        v15 = PBReaderReadString();
        v16 = 88;
        goto LABEL_212;
      case 0x1Eu:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *&self->_has |= 0x10u;
        while (1)
        {
          v152 = 0;
          v70 = [a3 position] + 1;
          if (v70 >= [a3 position] && (v71 = objc_msgSend(a3, "position") + 1, v71 <= objc_msgSend(a3, "length")))
          {
            v72 = [a3 data];
            [v72 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v69 |= (v152 & 0x7F) << v67;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v13 = v68++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_259;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v69;
        }

LABEL_259:
        v148 = 40;
        goto LABEL_274;
      case 0x1Fu:
        v15 = PBReaderReadData();
        v16 = 168;
LABEL_212:
        v140 = *&self->PBCodable_opaque[v16];
        *&self->PBCodable_opaque[v16] = v15;

        continue;
      case 0x20u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *&self->_has |= 0x80000u;
        while (1)
        {
          v152 = 0;
          v131 = [a3 position] + 1;
          if (v131 >= [a3 position] && (v132 = objc_msgSend(a3, "position") + 1, v132 <= objc_msgSend(a3, "length")))
          {
            v133 = [a3 data];
            [v133 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v130 |= (v152 & 0x7F) << v128;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v13 = v129++ >= 9;
          if (v13)
          {
            LOBYTE(v79) = 0;
            goto LABEL_296;
          }
        }

        v79 = (v130 != 0) & ~[a3 hasError];
LABEL_296:
        v150 = 225;
LABEL_299:
        self->PBCodable_opaque[v150] = v79;
        continue;
      case 0x21u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v152 = 0;
          v89 = [a3 position] + 1;
          if (v89 >= [a3 position] && (v90 = objc_msgSend(a3, "position") + 1, v90 <= objc_msgSend(a3, "length")))
          {
            v91 = [a3 data];
            [v91 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v88 |= (v152 & 0x7F) << v86;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v13 = v87++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_269;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v88;
        }

LABEL_269:
        v148 = 8;
        goto LABEL_274;
      case 0x22u:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *&self->_has |= 0x20u;
        while (1)
        {
          v152 = 0;
          v20 = [a3 position] + 1;
          if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
          {
            v22 = [a3 data];
            [v22 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v19 |= (v152 & 0x7F) << v17;
          if ((v152 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_227;
          }
        }

        if ([a3 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_227:
        v148 = 48;
LABEL_274:
        *&self->PBCodable_opaque[v148] = v23;
        continue;
      case 0x23u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *&self->_has |= 0x20000u;
        break;
      default:
        v147 = PBReaderSkipValueWithTag();
        if (!v147)
        {
          return v147;
        }

        continue;
    }

    while (1)
    {
      v152 = 0;
      v46 = [a3 position] + 1;
      if (v46 >= [a3 position] && (v47 = objc_msgSend(a3, "position") + 1, v47 <= objc_msgSend(a3, "length")))
      {
        v48 = [a3 data];
        [v48 getBytes:&v152 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
      }

      v45 |= (v152 & 0x7F) << v43;
      if ((v152 & 0x80) == 0)
      {
        break;
      }

      v43 += 7;
      v13 = v44++ >= 9;
      if (v13)
      {
        v36 = 0;
        goto LABEL_243;
      }
    }

    if ([a3 hasError])
    {
      v36 = 0;
    }

    else
    {
      v36 = v45;
    }

LABEL_243:
    v149 = 220;
LABEL_304:
    *&self->PBCodable_opaque[v149] = v36;
  }

  LOBYTE(v147) = [a3 hasError] ^ 1;
  return v147;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v30 = v4;
  if (self->_fileID)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_domainName)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_relativePath)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_absolutePath)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_linkTarget)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v30;
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    birth = self->_birth;
    PBDataWriterWriteInt32Field();
    v4 = v30;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_15:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  modified = self->_modified;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_16:
    statusChanged = self->_statusChanged;
    PBDataWriterWriteInt32Field();
    v4 = v30;
  }

LABEL_17:
  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v30;
  }

  v7 = self->_has;
  if ((*&v7 & 0x4000) != 0)
  {
    protectionClass = self->_protectionClass;
    PBDataWriterWriteInt32Field();
    v4 = v30;
    v7 = self->_has;
    if ((*&v7 & 4) == 0)
    {
LABEL_21:
      if ((*&v7 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v7 & 4) == 0)
  {
    goto LABEL_21;
  }

  size = self->_size;
  PBDataWriterWriteInt64Field();
  v4 = v30;
  v7 = self->_has;
  if ((*&v7 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  fileType = self->_fileType;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  groupID = self->_groupID;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  userID = self->_userID;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  v7 = self->_has;
  if ((*&v7 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_65:
  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_26:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
    v4 = v30;
  }

LABEL_27:
  if (self->_absolutePathPrefix)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if ((*&self->_has & 8) != 0)
  {
    sizeBeforeCopy = self->_sizeBeforeCopy;
    PBDataWriterWriteInt64Field();
    v4 = v30;
  }

  if (self->_subDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_stashedAssetPath)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if (self->_stashedResourcePath)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  v10 = self->_has;
  if ((*&v10 & 0x100000) != 0)
  {
    stashedAssetIsDecrypted = self->_stashedAssetIsDecrypted;
    PBDataWriterWriteBOOLField();
    v4 = v30;
    v10 = self->_has;
    if ((*&v10 & 2) == 0)
    {
LABEL_39:
      if ((*&v10 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v10 & 2) == 0)
  {
    goto LABEL_39;
  }

  resourcesSize = self->_resourcesSize;
  PBDataWriterWriteInt64Field();
  v4 = v30;
  v10 = self->_has;
  if ((*&v10 & 0x400) == 0)
  {
LABEL_40:
    if ((*&v10 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  flags = self->_flags;
  PBDataWriterWriteUint32Field();
  v4 = v30;
  v10 = self->_has;
  if ((*&v10 & 0x100) == 0)
  {
LABEL_41:
    if ((*&v10 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_70:
  contentEncodingMethod = self->_contentEncodingMethod;
  PBDataWriterWriteInt32Field();
  v4 = v30;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_42:
    contentCompressionMethod = self->_contentCompressionMethod;
    PBDataWriterWriteInt32Field();
    v4 = v30;
  }

LABEL_43:
  if (self->_decodedAssetPath)
  {
    PBDataWriterWriteStringField();
    v4 = v30;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    sizeBeforeEncoding = self->_sizeBeforeEncoding;
    PBDataWriterWriteInt64Field();
    v4 = v30;
  }

  if (self->_sha256Signature)
  {
    PBDataWriterWriteDataField();
    v4 = v30;
  }

  v13 = self->_has;
  if ((*&v13 & 0x80000) != 0)
  {
    isMMCSEncryptedOnly = self->_isMMCSEncryptedOnly;
    PBDataWriterWriteBOOLField();
    v4 = v30;
    v13 = self->_has;
    if ((*&v13 & 1) == 0)
    {
LABEL_51:
      if ((*&v13 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v13 & 1) == 0)
  {
    goto LABEL_51;
  }

  inode = self->_inode;
  PBDataWriterWriteInt64Field();
  v4 = v30;
  v13 = self->_has;
  if ((*&v13 & 0x20) == 0)
  {
LABEL_52:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_74:
  sourceDeviceInode = self->_sourceDeviceInode;
  PBDataWriterWriteInt64Field();
  v4 = v30;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_53:
    volumeType = self->_volumeType;
    PBDataWriterWriteUint32Field();
    v4 = v30;
  }

LABEL_54:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_fileID)
  {
    [v4 setFileID:?];
    v4 = v9;
  }

  if (self->_domainName)
  {
    [v9 setDomainName:?];
    v4 = v9;
  }

  if (self->_relativePath)
  {
    [v9 setRelativePath:?];
    v4 = v9;
  }

  if (self->_absolutePath)
  {
    [v9 setAbsolutePath:?];
    v4 = v9;
  }

  if (self->_linkTarget)
  {
    [v9 setLinkTarget:?];
    v4 = v9;
  }

  if (self->_signature)
  {
    [v9 setSignature:?];
    v4 = v9;
  }

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(v4 + 18) = self->_birth;
    *(v4 + 57) |= 0x40u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_15:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 37) = self->_modified;
  *(v4 + 57) |= 0x2000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_16:
    *(v4 + 50) = self->_statusChanged;
    *(v4 + 57) |= 0x8000u;
  }

LABEL_17:
  if (self->_encryptionKey)
  {
    [v9 setEncryptionKey:?];
    v4 = v9;
  }

  v6 = self->_has;
  if ((*&v6 & 0x4000) != 0)
  {
    *(v4 + 38) = self->_protectionClass;
    *(v4 + 57) |= 0x4000u;
    v6 = self->_has;
    if ((*&v6 & 4) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_62;
    }
  }

  else if ((*&v6 & 4) == 0)
  {
    goto LABEL_21;
  }

  *(v4 + 3) = self->_size;
  *(v4 + 57) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 30) = self->_fileType;
  *(v4 + 57) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 32) = self->_groupID;
  *(v4 + 57) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 54) = self->_userID;
  *(v4 + 57) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_65:
  *(v4 + 36) = self->_mode;
  *(v4 + 57) |= 0x1000u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_26:
    *(v4 + 224) = self->_deleted;
    *(v4 + 57) |= 0x40000u;
  }

LABEL_27:
  if (self->_absolutePathPrefix)
  {
    [v9 setAbsolutePathPrefix:?];
    v4 = v9;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = self->_sizeBeforeCopy;
    *(v4 + 57) |= 8u;
  }

  if (self->_subDomain)
  {
    [v9 setSubDomain:?];
    v4 = v9;
  }

  if (self->_stashedAssetPath)
  {
    [v9 setStashedAssetPath:?];
    v4 = v9;
  }

  if (self->_stashedResourcePath)
  {
    [v9 setStashedResourcePath:?];
    v4 = v9;
  }

  v7 = self->_has;
  if ((*&v7 & 0x100000) != 0)
  {
    *(v4 + 226) = self->_stashedAssetIsDecrypted;
    *(v4 + 57) |= 0x100000u;
    v7 = self->_has;
    if ((*&v7 & 2) == 0)
    {
LABEL_39:
      if ((*&v7 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v7 & 2) == 0)
  {
    goto LABEL_39;
  }

  *(v4 + 2) = self->_resourcesSize;
  *(v4 + 57) |= 2u;
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_40:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 31) = self->_flags;
  *(v4 + 57) |= 0x400u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_41:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_70:
  *(v4 + 20) = self->_contentEncodingMethod;
  *(v4 + 57) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_42:
    *(v4 + 19) = self->_contentCompressionMethod;
    *(v4 + 57) |= 0x80u;
  }

LABEL_43:
  if (self->_decodedAssetPath)
  {
    [v9 setDecodedAssetPath:?];
    v4 = v9;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 5) = self->_sizeBeforeEncoding;
    *(v4 + 57) |= 0x10u;
  }

  if (self->_sha256Signature)
  {
    [v9 setSha256Signature:?];
    v4 = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    *(v4 + 225) = self->_isMMCSEncryptedOnly;
    *(v4 + 57) |= 0x80000u;
    v8 = self->_has;
    if ((*&v8 & 1) == 0)
    {
LABEL_51:
      if ((*&v8 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_74;
    }
  }

  else if ((*&v8 & 1) == 0)
  {
    goto LABEL_51;
  }

  *(v4 + 1) = self->_inode;
  *(v4 + 57) |= 1u;
  v8 = self->_has;
  if ((*&v8 & 0x20) == 0)
  {
LABEL_52:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_74:
  *(v4 + 6) = self->_sourceDeviceInode;
  *(v4 + 57) |= 0x20u;
  if ((*&self->_has & 0x20000) != 0)
  {
LABEL_53:
    *(v4 + 55) = self->_volumeType;
    *(v4 + 57) |= 0x20000u;
  }

LABEL_54:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fileID copyWithZone:a3];
  v7 = v5[14];
  v5[14] = v6;

  v8 = [(NSString *)self->_domainName copyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  v10 = [(NSString *)self->_relativePath copyWithZone:a3];
  v11 = v5[20];
  v5[20] = v10;

  v12 = [(NSString *)self->_absolutePath copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSString *)self->_linkTarget copyWithZone:a3];
  v15 = v5[17];
  v5[17] = v14;

  v16 = [(NSData *)self->_signature copyWithZone:a3];
  v17 = v5[22];
  v5[22] = v16;

  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    *(v5 + 18) = self->_birth;
    *(v5 + 57) |= 0x40u;
    has = self->_has;
    if ((*&has & 0x2000) == 0)
    {
LABEL_3:
      if ((*&has & 0x8000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 37) = self->_modified;
  *(v5 + 57) |= 0x2000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_4:
    *(v5 + 50) = self->_statusChanged;
    *(v5 + 57) |= 0x8000u;
  }

LABEL_5:
  v19 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v20 = v5[13];
  v5[13] = v19;

  v21 = self->_has;
  if ((*&v21 & 0x4000) != 0)
  {
    *(v5 + 38) = self->_protectionClass;
    *(v5 + 57) |= 0x4000u;
    v21 = self->_has;
    if ((*&v21 & 4) == 0)
    {
LABEL_7:
      if ((*&v21 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v21 & 4) == 0)
  {
    goto LABEL_7;
  }

  v5[3] = self->_size;
  *(v5 + 57) |= 4u;
  v21 = self->_has;
  if ((*&v21 & 0x200) == 0)
  {
LABEL_8:
    if ((*&v21 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 30) = self->_fileType;
  *(v5 + 57) |= 0x200u;
  v21 = self->_has;
  if ((*&v21 & 0x800) == 0)
  {
LABEL_9:
    if ((*&v21 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 32) = self->_groupID;
  *(v5 + 57) |= 0x800u;
  v21 = self->_has;
  if ((*&v21 & 0x10000) == 0)
  {
LABEL_10:
    if ((*&v21 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 54) = self->_userID;
  *(v5 + 57) |= 0x10000u;
  v21 = self->_has;
  if ((*&v21 & 0x1000) == 0)
  {
LABEL_11:
    if ((*&v21 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_37:
  *(v5 + 36) = self->_mode;
  *(v5 + 57) |= 0x1000u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_12:
    *(v5 + 224) = self->_deleted;
    *(v5 + 57) |= 0x40000u;
  }

LABEL_13:
  v22 = [(NSString *)self->_absolutePathPrefix copyWithZone:a3];
  v23 = v5[8];
  v5[8] = v22;

  if ((*&self->_has & 8) != 0)
  {
    v5[4] = self->_sizeBeforeCopy;
    *(v5 + 57) |= 8u;
  }

  v24 = [(NSString *)self->_subDomain copyWithZone:a3];
  v25 = v5[26];
  v5[26] = v24;

  v26 = [(NSString *)self->_stashedAssetPath copyWithZone:a3];
  v27 = v5[23];
  v5[23] = v26;

  v28 = [(NSString *)self->_stashedResourcePath copyWithZone:a3];
  v29 = v5[24];
  v5[24] = v28;

  v30 = self->_has;
  if ((*&v30 & 0x100000) != 0)
  {
    *(v5 + 226) = self->_stashedAssetIsDecrypted;
    *(v5 + 57) |= 0x100000u;
    v30 = self->_has;
    if ((*&v30 & 2) == 0)
    {
LABEL_17:
      if ((*&v30 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v30 & 2) == 0)
  {
    goto LABEL_17;
  }

  v5[2] = self->_resourcesSize;
  *(v5 + 57) |= 2u;
  v30 = self->_has;
  if ((*&v30 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v30 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 31) = self->_flags;
  *(v5 + 57) |= 0x400u;
  v30 = self->_has;
  if ((*&v30 & 0x100) == 0)
  {
LABEL_19:
    if ((*&v30 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_42:
  *(v5 + 20) = self->_contentEncodingMethod;
  *(v5 + 57) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_20:
    *(v5 + 19) = self->_contentCompressionMethod;
    *(v5 + 57) |= 0x80u;
  }

LABEL_21:
  v31 = [(NSString *)self->_decodedAssetPath copyWithZone:a3];
  v32 = v5[11];
  v5[11] = v31;

  if ((*&self->_has & 0x10) != 0)
  {
    v5[5] = self->_sizeBeforeEncoding;
    *(v5 + 57) |= 0x10u;
  }

  v33 = [(NSData *)self->_sha256Signature copyWithZone:a3];
  v34 = v5[21];
  v5[21] = v33;

  v35 = self->_has;
  if ((*&v35 & 0x80000) != 0)
  {
    *(v5 + 225) = self->_isMMCSEncryptedOnly;
    *(v5 + 57) |= 0x80000u;
    v35 = self->_has;
    if ((*&v35 & 1) == 0)
    {
LABEL_25:
      if ((*&v35 & 0x20) == 0)
      {
        goto LABEL_26;
      }

LABEL_46:
      v5[6] = self->_sourceDeviceInode;
      *(v5 + 57) |= 0x20u;
      if ((*&self->_has & 0x20000) == 0)
      {
        return v5;
      }

      goto LABEL_27;
    }
  }

  else if ((*&v35 & 1) == 0)
  {
    goto LABEL_25;
  }

  v5[1] = self->_inode;
  *(v5 + 57) |= 1u;
  v35 = self->_has;
  if ((*&v35 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_26:
  if ((*&v35 & 0x20000) != 0)
  {
LABEL_27:
    *(v5 + 55) = self->_volumeType;
    *(v5 + 57) |= 0x20000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_88;
  }

  fileID = self->_fileID;
  if (fileID | *(v4 + 14))
  {
    if (![(NSString *)fileID isEqual:?])
    {
      goto LABEL_88;
    }
  }

  domainName = self->_domainName;
  if (domainName | *(v4 + 12))
  {
    if (![(NSString *)domainName isEqual:?])
    {
      goto LABEL_88;
    }
  }

  relativePath = self->_relativePath;
  if (relativePath | *(v4 + 20))
  {
    if (![(NSString *)relativePath isEqual:?])
    {
      goto LABEL_88;
    }
  }

  absolutePath = self->_absolutePath;
  if (absolutePath | *(v4 + 7))
  {
    if (![(NSString *)absolutePath isEqual:?])
    {
      goto LABEL_88;
    }
  }

  linkTarget = self->_linkTarget;
  if (linkTarget | *(v4 + 17))
  {
    if (![(NSString *)linkTarget isEqual:?])
    {
      goto LABEL_88;
    }
  }

  signature = self->_signature;
  if (signature | *(v4 + 22))
  {
    if (![(NSData *)signature isEqual:?])
    {
      goto LABEL_88;
    }
  }

  has = self->_has;
  v12 = *(v4 + 57);
  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_birth != *(v4 + 18))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_modified != *(v4 + 37))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v12 & 0x8000) == 0 || self->_statusChanged != *(v4 + 50))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x8000) != 0)
  {
    goto LABEL_88;
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey | *(v4 + 13))
  {
    if (![(NSData *)encryptionKey isEqual:?])
    {
      goto LABEL_88;
    }

    has = self->_has;
    v12 = *(v4 + 57);
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v12 & 0x4000) == 0 || self->_protectionClass != *(v4 + 38))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x4000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_size != *(v4 + 3))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_fileType != *(v4 + 30))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_groupID != *(v4 + 32))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_userID != *(v4 + 54))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v12 & 0x1000) == 0 || self->_mode != *(v4 + 36))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0)
    {
      goto LABEL_88;
    }

    v15 = *(v4 + 224);
    if (self->_deleted)
    {
      if ((*(v4 + 224) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 224))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_88;
  }

  absolutePathPrefix = self->_absolutePathPrefix;
  if (absolutePathPrefix | *(v4 + 8))
  {
    if (![(NSString *)absolutePathPrefix isEqual:?])
    {
      goto LABEL_88;
    }

    has = self->_has;
    v12 = *(v4 + 57);
  }

  if ((*&has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_sizeBeforeCopy != *(v4 + 4))
    {
      goto LABEL_88;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_88;
  }

  subDomain = self->_subDomain;
  if (subDomain | *(v4 + 26) && ![(NSString *)subDomain isEqual:?])
  {
    goto LABEL_88;
  }

  stashedAssetPath = self->_stashedAssetPath;
  if (stashedAssetPath | *(v4 + 23))
  {
    if (![(NSString *)stashedAssetPath isEqual:?])
    {
      goto LABEL_88;
    }
  }

  stashedResourcePath = self->_stashedResourcePath;
  if (stashedResourcePath | *(v4 + 24))
  {
    if (![(NSString *)stashedResourcePath isEqual:?])
    {
      goto LABEL_88;
    }
  }

  v19 = self->_has;
  v20 = *(v4 + 57);
  if ((*&v19 & 0x100000) != 0)
  {
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    v23 = *(v4 + 226);
    if (self->_stashedAssetIsDecrypted)
    {
      if ((*(v4 + 226) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 226))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x100000) != 0)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 2) != 0)
  {
    if ((v20 & 2) == 0 || self->_resourcesSize != *(v4 + 2))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 2) != 0)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 0x400) != 0)
  {
    if ((v20 & 0x400) == 0 || self->_flags != *(v4 + 31))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x400) != 0)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 0x100) != 0)
  {
    if ((v20 & 0x100) == 0 || self->_contentEncodingMethod != *(v4 + 20))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x100) != 0)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_contentCompressionMethod != *(v4 + 19))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x80) != 0)
  {
    goto LABEL_88;
  }

  decodedAssetPath = self->_decodedAssetPath;
  if (decodedAssetPath | *(v4 + 11))
  {
    if (![(NSString *)decodedAssetPath isEqual:?])
    {
      goto LABEL_88;
    }

    v19 = self->_has;
    v20 = *(v4 + 57);
  }

  if ((*&v19 & 0x10) != 0)
  {
    if ((v20 & 0x10) == 0 || self->_sizeBeforeEncoding != *(v4 + 5))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x10) != 0)
  {
    goto LABEL_88;
  }

  sha256Signature = self->_sha256Signature;
  if (sha256Signature | *(v4 + 21))
  {
    if (![(NSData *)sha256Signature isEqual:?])
    {
      goto LABEL_88;
    }

    v19 = self->_has;
    v20 = *(v4 + 57);
  }

  if ((*&v19 & 0x80000) != 0)
  {
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_88;
    }

    v26 = *(v4 + 225);
    if (self->_isMMCSEncryptedOnly)
    {
      if ((*(v4 + 225) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    else if (*(v4 + 225))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x80000) != 0)
  {
    goto LABEL_88;
  }

  if (*&v19)
  {
    if ((v20 & 1) == 0 || self->_inode != *(v4 + 1))
    {
      goto LABEL_88;
    }
  }

  else if (v20)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 0x20) != 0)
  {
    if ((v20 & 0x20) == 0 || self->_sourceDeviceInode != *(v4 + 6))
    {
      goto LABEL_88;
    }
  }

  else if ((v20 & 0x20) != 0)
  {
    goto LABEL_88;
  }

  if ((*&v19 & 0x20000) == 0)
  {
    v21 = (v20 & 0x20000) == 0;
    goto LABEL_89;
  }

  if ((v20 & 0x20000) != 0 && self->_volumeType == *(v4 + 55))
  {
    v21 = 1;
    goto LABEL_89;
  }

LABEL_88:
  v21 = 0;
LABEL_89:

  return v21;
}

- (unint64_t)hash
{
  v41 = [(NSString *)self->_fileID hash];
  v40 = [(NSString *)self->_domainName hash];
  v39 = [(NSString *)self->_relativePath hash];
  v38 = [(NSString *)self->_absolutePath hash];
  v37 = [(NSString *)self->_linkTarget hash];
  v36 = [(NSData *)self->_signature hash];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
    v35 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v34 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 2654435761 * self->_birth;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v34 = 2654435761 * self->_modified;
  if ((*&has & 0x8000) != 0)
  {
LABEL_4:
    v33 = 2654435761 * self->_statusChanged;
    goto LABEL_8;
  }

LABEL_7:
  v33 = 0;
LABEL_8:
  v32 = [(NSData *)self->_encryptionKey hash];
  v4 = self->_has;
  if ((*&v4 & 0x4000) != 0)
  {
    v31 = 2654435761 * self->_protectionClass;
    if ((*&v4 & 4) != 0)
    {
LABEL_10:
      v30 = 2654435761 * self->_size;
      if ((*&v4 & 0x200) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v31 = 0;
    if ((*&v4 & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  v30 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_11:
    v29 = 2654435761 * self->_fileType;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v29 = 0;
  if ((*&v4 & 0x800) != 0)
  {
LABEL_12:
    v28 = 2654435761 * self->_groupID;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_13:
    v27 = 2654435761 * self->_userID;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    v26 = 0;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_20:
  v27 = 0;
  if ((*&v4 & 0x1000) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v26 = 2654435761 * self->_mode;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_15:
    v25 = 2654435761 * self->_deleted;
    goto LABEL_23;
  }

LABEL_22:
  v25 = 0;
LABEL_23:
  v24 = [(NSString *)self->_absolutePathPrefix hash];
  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_sizeBeforeCopy;
  }

  else
  {
    v23 = 0;
  }

  v22 = [(NSString *)self->_subDomain hash];
  v21 = [(NSString *)self->_stashedAssetPath hash];
  v20 = [(NSString *)self->_stashedResourcePath hash];
  v5 = self->_has;
  if ((*&v5 & 0x100000) != 0)
  {
    v6 = 2654435761 * self->_stashedAssetIsDecrypted;
    if ((*&v5 & 2) != 0)
    {
LABEL_28:
      v7 = 2654435761 * self->_resourcesSize;
      if ((*&v5 & 0x400) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0;
    if ((*&v5 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

  v7 = 0;
  if ((*&v5 & 0x400) != 0)
  {
LABEL_29:
    v8 = 2654435761 * self->_flags;
    if ((*&v5 & 0x100) != 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    v9 = 0;
    if ((*&v5 & 0x80) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

LABEL_34:
  v8 = 0;
  if ((*&v5 & 0x100) == 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  v9 = 2654435761 * self->_contentEncodingMethod;
  if ((*&v5 & 0x80) != 0)
  {
LABEL_31:
    v10 = 2654435761 * self->_contentCompressionMethod;
    goto LABEL_37;
  }

LABEL_36:
  v10 = 0;
LABEL_37:
  v11 = [(NSString *)self->_decodedAssetPath hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v12 = 2654435761 * self->_sizeBeforeEncoding;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSData *)self->_sha256Signature hash];
  v14 = self->_has;
  if ((*&v14 & 0x80000) != 0)
  {
    v15 = 2654435761 * self->_isMMCSEncryptedOnly;
    if (*&v14)
    {
LABEL_42:
      v16 = 2654435761 * self->_inode;
      if ((*&v14 & 0x20) != 0)
      {
        goto LABEL_43;
      }

LABEL_47:
      v17 = 0;
      if ((*&v14 & 0x20000) != 0)
      {
        goto LABEL_44;
      }

LABEL_48:
      v18 = 0;
      return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
    }
  }

  else
  {
    v15 = 0;
    if (*&v14)
    {
      goto LABEL_42;
    }
  }

  v16 = 0;
  if ((*&v14 & 0x20) == 0)
  {
    goto LABEL_47;
  }

LABEL_43:
  v17 = 2654435761 * self->_sourceDeviceInode;
  if ((*&v14 & 0x20000) == 0)
  {
    goto LABEL_48;
  }

LABEL_44:
  v18 = 2654435761 * self->_volumeType;
  return v40 ^ v41 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 14))
  {
    [(MBCKFileArchive *)self setFileID:?];
    v4 = v9;
  }

  if (*(v4 + 12))
  {
    [(MBCKFileArchive *)self setDomainName:?];
    v4 = v9;
  }

  if (*(v4 + 20))
  {
    [(MBCKFileArchive *)self setRelativePath:?];
    v4 = v9;
  }

  if (*(v4 + 7))
  {
    [(MBCKFileArchive *)self setAbsolutePath:?];
    v4 = v9;
  }

  if (*(v4 + 17))
  {
    [(MBCKFileArchive *)self setLinkTarget:?];
    v4 = v9;
  }

  if (*(v4 + 22))
  {
    [(MBCKFileArchive *)self setSignature:?];
    v4 = v9;
  }

  v5 = *(v4 + 57);
  if ((v5 & 0x40) != 0)
  {
    self->_birth = *(v4 + 18);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 57);
    if ((v5 & 0x2000) == 0)
    {
LABEL_15:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  self->_modified = *(v4 + 37);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 57) & 0x8000) != 0)
  {
LABEL_16:
    self->_statusChanged = *(v4 + 50);
    *&self->_has |= 0x8000u;
  }

LABEL_17:
  if (*(v4 + 13))
  {
    [(MBCKFileArchive *)self setEncryptionKey:?];
    v4 = v9;
  }

  v6 = *(v4 + 57);
  if ((v6 & 0x4000) != 0)
  {
    self->_protectionClass = *(v4 + 38);
    *&self->_has |= 0x4000u;
    v6 = *(v4 + 57);
    if ((v6 & 4) == 0)
    {
LABEL_21:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_21;
  }

  self->_size = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 57);
  if ((v6 & 0x200) == 0)
  {
LABEL_22:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_fileType = *(v4 + 30);
  *&self->_has |= 0x200u;
  v6 = *(v4 + 57);
  if ((v6 & 0x800) == 0)
  {
LABEL_23:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_groupID = *(v4 + 32);
  *&self->_has |= 0x800u;
  v6 = *(v4 + 57);
  if ((v6 & 0x10000) == 0)
  {
LABEL_24:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_userID = *(v4 + 54);
  *&self->_has |= 0x10000u;
  v6 = *(v4 + 57);
  if ((v6 & 0x1000) == 0)
  {
LABEL_25:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_65:
  self->_mode = *(v4 + 36);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 57) & 0x40000) != 0)
  {
LABEL_26:
    self->_deleted = *(v4 + 224);
    *&self->_has |= 0x40000u;
  }

LABEL_27:
  if (*(v4 + 8))
  {
    [(MBCKFileArchive *)self setAbsolutePathPrefix:?];
    v4 = v9;
  }

  if ((*(v4 + 228) & 8) != 0)
  {
    self->_sizeBeforeCopy = *(v4 + 4);
    *&self->_has |= 8u;
  }

  if (*(v4 + 26))
  {
    [(MBCKFileArchive *)self setSubDomain:?];
    v4 = v9;
  }

  if (*(v4 + 23))
  {
    [(MBCKFileArchive *)self setStashedAssetPath:?];
    v4 = v9;
  }

  if (*(v4 + 24))
  {
    [(MBCKFileArchive *)self setStashedResourcePath:?];
    v4 = v9;
  }

  v7 = *(v4 + 57);
  if ((v7 & 0x100000) != 0)
  {
    self->_stashedAssetIsDecrypted = *(v4 + 226);
    *&self->_has |= 0x100000u;
    v7 = *(v4 + 57);
    if ((v7 & 2) == 0)
    {
LABEL_39:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_39;
  }

  self->_resourcesSize = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 57);
  if ((v7 & 0x400) == 0)
  {
LABEL_40:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_flags = *(v4 + 31);
  *&self->_has |= 0x400u;
  v7 = *(v4 + 57);
  if ((v7 & 0x100) == 0)
  {
LABEL_41:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_70:
  self->_contentEncodingMethod = *(v4 + 20);
  *&self->_has |= 0x100u;
  if ((*(v4 + 57) & 0x80) != 0)
  {
LABEL_42:
    self->_contentCompressionMethod = *(v4 + 19);
    *&self->_has |= 0x80u;
  }

LABEL_43:
  if (*(v4 + 11))
  {
    [(MBCKFileArchive *)self setDecodedAssetPath:?];
    v4 = v9;
  }

  if ((*(v4 + 228) & 0x10) != 0)
  {
    self->_sizeBeforeEncoding = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 21))
  {
    [(MBCKFileArchive *)self setSha256Signature:?];
    v4 = v9;
  }

  v8 = *(v4 + 57);
  if ((v8 & 0x80000) != 0)
  {
    self->_isMMCSEncryptedOnly = *(v4 + 225);
    *&self->_has |= 0x80000u;
    v8 = *(v4 + 57);
    if ((v8 & 1) == 0)
    {
LABEL_51:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_74;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_51;
  }

  self->_inode = *(v4 + 1);
  *&self->_has |= 1u;
  v8 = *(v4 + 57);
  if ((v8 & 0x20) == 0)
  {
LABEL_52:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_74:
  self->_sourceDeviceInode = *(v4 + 6);
  *&self->_has |= 0x20u;
  if ((*(v4 + 57) & 0x20000) != 0)
  {
LABEL_53:
    self->_volumeType = *(v4 + 55);
    *&self->_has |= 0x20000u;
  }

LABEL_54:
}

@end