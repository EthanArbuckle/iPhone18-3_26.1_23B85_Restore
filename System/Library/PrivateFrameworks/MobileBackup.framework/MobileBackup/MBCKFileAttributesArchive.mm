@interface MBCKFileAttributesArchive
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
- (void)setHasFlags:(BOOL)a3;
- (void)setHasGroupID:(BOOL)a3;
- (void)setHasIsMMCSEncryptedOnly:(BOOL)a3;
- (void)setHasMode:(BOOL)a3;
- (void)setHasModified:(BOOL)a3;
- (void)setHasSizeBeforeCopy:(BOOL)a3;
- (void)setHasSourceDeviceInode:(BOOL)a3;
- (void)setHasStatusChanged:(BOOL)a3;
- (void)setHasUserID:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBCKFileAttributesArchive

- (void)setHasBirth:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasModified:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasStatusChanged:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasGroupID:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasUserID:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSizeBeforeCopy:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasFlags:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasContentEncodingMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasContentCompressionMethod:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsMMCSEncryptedOnly:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasSourceDeviceInode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = MBCKFileAttributesArchive;
  v3 = [(MBCKFileAttributesArchive *)&v7 description];
  v4 = [(MBCKFileAttributesArchive *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  relativePath = self->_relativePath;
  if (relativePath)
  {
    [v3 setObject:relativePath forKey:@"relativePath"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v14 = [NSNumber numberWithInt:self->_birth];
    [v4 setObject:v14 forKey:@"birth"];

    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 0x400) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  v15 = [NSNumber numberWithInt:self->_modified];
  [v4 setObject:v15 forKey:@"modified"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [NSNumber numberWithInt:self->_statusChanged];
  [v4 setObject:v16 forKey:@"statusChanged"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithLongLong:self->_size];
  [v4 setObject:v17 forKey:@"size"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithInt:self->_groupID];
  [v4 setObject:v18 forKey:@"groupID"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [NSNumber numberWithInt:self->_userID];
  [v4 setObject:v19 forKey:@"userID"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  v20 = [NSNumber numberWithInt:self->_mode];
  [v4 setObject:v20 forKey:@"mode"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v7 = [NSNumber numberWithLongLong:self->_sizeBeforeCopy];
    [v4 setObject:v7 forKey:@"sizeBeforeCopy"];
  }

LABEL_12:
  linkTarget = self->_linkTarget;
  if (linkTarget)
  {
    [v4 setObject:linkTarget forKey:@"linkTarget"];
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v4 setObject:encryptionKey forKey:@"encryptionKey"];
  }

  sha256Signature = self->_sha256Signature;
  if (sha256Signature)
  {
    [v4 setObject:sha256Signature forKey:@"sha256Signature"];
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v21 = [NSNumber numberWithUnsignedInt:self->_flags];
    [v4 setObject:v21 forKey:@"flags"];

    v11 = self->_has;
    if ((v11 & 0x20) == 0)
    {
LABEL_20:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v11 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  v22 = [NSNumber numberWithInt:self->_contentEncodingMethod];
  [v4 setObject:v22 forKey:@"contentEncodingMethod"];

  v11 = self->_has;
  if ((v11 & 0x10) == 0)
  {
LABEL_21:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  v23 = [NSNumber numberWithInt:self->_contentCompressionMethod];
  [v4 setObject:v23 forKey:@"contentCompressionMethod"];

  v11 = self->_has;
  if ((v11 & 0x1000) == 0)
  {
LABEL_22:
    if ((v11 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_38:
  v24 = [NSNumber numberWithBool:self->_isMMCSEncryptedOnly];
  [v4 setObject:v24 forKey:@"isMMCSEncryptedOnly"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    v12 = [NSNumber numberWithLongLong:self->_sourceDeviceInode];
    [v4 setObject:v12 forKey:@"sourceDeviceInode"];
  }

LABEL_24:

  return v4;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v103 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v103 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v103 & 0x7F) << v6;
        if ((v103 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      switch((v13 >> 3))
      {
        case 1u:
          v14 = PBReaderReadString();
          v15 = 80;
          goto LABEL_123;
        case 3u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *&self->_has |= 8u;
          while (1)
          {
            v111 = 0;
            v39 = [a3 position] + 1;
            if (v39 >= [a3 position] && (v40 = objc_msgSend(a3, "position") + 1, v40 <= objc_msgSend(a3, "length")))
            {
              v41 = [a3 data];
              [v41 getBytes:&v111 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v38 |= (v111 & 0x7F) << v36;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_157;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v38;
          }

LABEL_157:
          v99 = 32;
          goto LABEL_182;
        case 4u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *&self->_has |= 0x200u;
          while (1)
          {
            v110 = 0;
            v58 = [a3 position] + 1;
            if (v58 >= [a3 position] && (v59 = objc_msgSend(a3, "position") + 1, v59 <= objc_msgSend(a3, "length")))
            {
              v60 = [a3 data];
              [v60 getBytes:&v110 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v57 |= (v110 & 0x7F) << v55;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v12 = v56++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_169;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v57;
          }

LABEL_169:
          v99 = 76;
          goto LABEL_182;
        case 5u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *&self->_has |= 0x400u;
          while (1)
          {
            v109 = 0;
            v51 = [a3 position] + 1;
            if (v51 >= [a3 position] && (v52 = objc_msgSend(a3, "position") + 1, v52 <= objc_msgSend(a3, "length")))
            {
              v53 = [a3 data];
              [v53 getBytes:&v109 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v50 |= (v109 & 0x7F) << v48;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v12 = v49++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_165;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v50;
          }

LABEL_165:
          v99 = 96;
          goto LABEL_182;
        case 6u:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            v114 = 0;
            v26 = [a3 position] + 1;
            if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
            {
              v28 = [a3 data];
              [v28 getBytes:&v114 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v25 |= (v114 & 0x7F) << v23;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_149;
            }
          }

          if ([a3 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_149:
          v100 = 8;
          goto LABEL_193;
        case 7u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          *&self->_has |= 0x80u;
          while (1)
          {
            v108 = 0;
            v45 = [a3 position] + 1;
            if (v45 >= [a3 position] && (v46 = objc_msgSend(a3, "position") + 1, v46 <= objc_msgSend(a3, "length")))
            {
              v47 = [a3 data];
              [v47 getBytes:&v108 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v44 |= (v108 & 0x7F) << v42;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v12 = v43++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_161;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v44;
          }

LABEL_161:
          v99 = 60;
          goto LABEL_182;
        case 8u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          *&self->_has |= 0x800u;
          while (1)
          {
            v107 = 0;
            v64 = [a3 position] + 1;
            if (v64 >= [a3 position] && (v65 = objc_msgSend(a3, "position") + 1, v65 <= objc_msgSend(a3, "length")))
            {
              v66 = [a3 data];
              [v66 getBytes:&v107 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v63 |= (v107 & 0x7F) << v61;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v12 = v62++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_173;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v63;
          }

LABEL_173:
          v99 = 100;
          goto LABEL_182;
        case 9u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          *&self->_has |= 0x100u;
          while (1)
          {
            v106 = 0;
            v70 = [a3 position] + 1;
            if (v70 >= [a3 position] && (v71 = objc_msgSend(a3, "position") + 1, v71 <= objc_msgSend(a3, "length")))
            {
              v72 = [a3 data];
              [v72 getBytes:&v106 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v69 |= (v106 & 0x7F) << v67;
            if ((v106 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v12 = v68++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_177;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v69;
          }

LABEL_177:
          v99 = 72;
          goto LABEL_182;
        case 0xAu:
          v87 = 0;
          v88 = 0;
          v89 = 0;
          *&self->_has |= 2u;
          while (1)
          {
            v113 = 0;
            v90 = [a3 position] + 1;
            if (v90 >= [a3 position] && (v91 = objc_msgSend(a3, "position") + 1, v91 <= objc_msgSend(a3, "length")))
            {
              v92 = [a3 data];
              [v92 getBytes:&v113 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v89 |= (v113 & 0x7F) << v87;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v87 += 7;
            v12 = v88++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_188;
            }
          }

          if ([a3 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v89;
          }

LABEL_188:
          v100 = 16;
          goto LABEL_193;
        case 0xBu:
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_123;
        case 0xCu:
          v14 = PBReaderReadData();
          v15 = 48;
          goto LABEL_123;
        case 0xDu:
          v14 = PBReaderReadData();
          v15 = 88;
LABEL_123:
          v86 = *&self->PBCodable_opaque[v15];
          *&self->PBCodable_opaque[v15] = v14;

          goto LABEL_194;
        case 0xFu:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *&self->_has |= 0x40u;
          while (1)
          {
            v115 = 0;
            v33 = [a3 position] + 1;
            if (v33 >= [a3 position] && (v34 = objc_msgSend(a3, "position") + 1, v34 <= objc_msgSend(a3, "length")))
            {
              v35 = [a3 data];
              [v35 getBytes:&v115 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v32 |= (v115 & 0x7F) << v30;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v12 = v31++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_153;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v32;
          }

LABEL_153:
          v99 = 56;
          goto LABEL_182;
        case 0x10u:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *&self->_has |= 0x20u;
          while (1)
          {
            v105 = 0;
            v19 = [a3 position] + 1;
            if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
            {
              v21 = [a3 data];
              [v21 getBytes:&v105 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v18 |= (v105 & 0x7F) << v16;
            if ((v105 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_145;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_145:
          v99 = 40;
          goto LABEL_182;
        case 0x11u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            v104 = 0;
            v76 = [a3 position] + 1;
            if (v76 >= [a3 position] && (v77 = objc_msgSend(a3, "position") + 1, v77 <= objc_msgSend(a3, "length")))
            {
              v78 = [a3 data];
              [v78 getBytes:&v104 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v75 |= (v104 & 0x7F) << v73;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v73 += 7;
            v12 = v74++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_181;
            }
          }

          if ([a3 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v75;
          }

LABEL_181:
          v99 = 36;
LABEL_182:
          *&self->PBCodable_opaque[v99] = v22;
          goto LABEL_194;
        case 0x12u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          *&self->_has |= 0x1000u;
          while (1)
          {
            v116 = 0;
            v82 = [a3 position] + 1;
            if (v82 >= [a3 position] && (v83 = objc_msgSend(a3, "position") + 1, v83 <= objc_msgSend(a3, "length")))
            {
              v84 = [a3 data];
              [v84 getBytes:&v116 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v81 |= (v116 & 0x7F) << v79;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v12 = v80++ >= 9;
            if (v12)
            {
              LOBYTE(v85) = 0;
              goto LABEL_184;
            }
          }

          v85 = (v81 != 0) & ~[a3 hasError];
LABEL_184:
          self->_isMMCSEncryptedOnly = v85;
          goto LABEL_194;
        case 0x13u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *&self->_has |= 4u;
          break;
        default:
          v54 = PBReaderSkipValueWithTag();
          if (!v54)
          {
            return v54;
          }

          goto LABEL_194;
      }

      while (1)
      {
        v112 = 0;
        v96 = [a3 position] + 1;
        if (v96 >= [a3 position] && (v97 = objc_msgSend(a3, "position") + 1, v97 <= objc_msgSend(a3, "length")))
        {
          v98 = [a3 data];
          [v98 getBytes:&v112 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v95 |= (v112 & 0x7F) << v93;
        if ((v112 & 0x80) == 0)
        {
          break;
        }

        v93 += 7;
        v12 = v94++ >= 9;
        if (v12)
        {
          v29 = 0;
          goto LABEL_192;
        }
      }

      v29 = [a3 hasError] ? 0 : v95;
LABEL_192:
      v100 = 24;
LABEL_193:
      *&self->PBCodable_opaque[v100] = v29;
LABEL_194:
      v101 = [a3 position];
    }

    while (v101 < [a3 length]);
  }

  LOBYTE(v54) = [a3 hasError] ^ 1;
  return v54;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v20 = v4;
  if (self->_relativePath)
  {
    PBDataWriterWriteStringField();
    v4 = v20;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    birth = self->_birth;
    PBDataWriterWriteInt32Field();
    v4 = v20;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 0x400) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  modified = self->_modified;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  statusChanged = self->_statusChanged;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  size = self->_size;
  PBDataWriterWriteInt64Field();
  v4 = v20;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  groupID = self->_groupID;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  userID = self->_userID;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  mode = self->_mode;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    sizeBeforeCopy = self->_sizeBeforeCopy;
    PBDataWriterWriteInt64Field();
    v4 = v20;
  }

LABEL_12:
  if (self->_linkTarget)
  {
    PBDataWriterWriteStringField();
    v4 = v20;
  }

  if (self->_encryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v20;
  }

  if (self->_sha256Signature)
  {
    PBDataWriterWriteDataField();
    v4 = v20;
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    flags = self->_flags;
    PBDataWriterWriteUint32Field();
    v4 = v20;
    v7 = self->_has;
    if ((v7 & 0x20) == 0)
    {
LABEL_20:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  contentEncodingMethod = self->_contentEncodingMethod;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  v7 = self->_has;
  if ((v7 & 0x10) == 0)
  {
LABEL_21:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  contentCompressionMethod = self->_contentCompressionMethod;
  PBDataWriterWriteInt32Field();
  v4 = v20;
  v7 = self->_has;
  if ((v7 & 0x1000) == 0)
  {
LABEL_22:
    if ((v7 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_38:
  isMMCSEncryptedOnly = self->_isMMCSEncryptedOnly;
  PBDataWriterWriteBOOLField();
  v4 = v20;
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    sourceDeviceInode = self->_sourceDeviceInode;
    PBDataWriterWriteInt64Field();
    v4 = v20;
  }

LABEL_24:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_relativePath)
  {
    [v4 setRelativePath:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 8) = self->_birth;
    *(v4 + 54) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_5:
      if ((has & 0x400) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 19) = self->_modified;
  *(v4 + 54) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 24) = self->_statusChanged;
  *(v4 + 54) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 1) = self->_size;
  *(v4 + 54) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 15) = self->_groupID;
  *(v4 + 54) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 25) = self->_userID;
  *(v4 + 54) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  *(v4 + 18) = self->_mode;
  *(v4 + 54) |= 0x100u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    *(v4 + 2) = self->_sizeBeforeCopy;
    *(v4 + 54) |= 2u;
  }

LABEL_12:
  if (self->_linkTarget)
  {
    [v7 setLinkTarget:?];
    v4 = v7;
  }

  if (self->_encryptionKey)
  {
    [v7 setEncryptionKey:?];
    v4 = v7;
  }

  if (self->_sha256Signature)
  {
    [v7 setSha256Signature:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 14) = self->_flags;
    *(v4 + 54) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 0x20) == 0)
    {
LABEL_20:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  *(v4 + 10) = self->_contentEncodingMethod;
  *(v4 + 54) |= 0x20u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 9) = self->_contentCompressionMethod;
  *(v4 + 54) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 0x1000) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_38:
  *(v4 + 104) = self->_isMMCSEncryptedOnly;
  *(v4 + 54) |= 0x1000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    *(v4 + 3) = self->_sourceDeviceInode;
    *(v4 + 54) |= 4u;
  }

LABEL_24:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_relativePath copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 8) = self->_birth;
    *(v5 + 54) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 19) = self->_modified;
  *(v5 + 54) |= 0x200u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 24) = self->_statusChanged;
  *(v5 + 54) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5[1] = self->_size;
  *(v5 + 54) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 15) = self->_groupID;
  *(v5 + 54) |= 0x80u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 25) = self->_userID;
  *(v5 + 54) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_23:
  *(v5 + 18) = self->_mode;
  *(v5 + 54) |= 0x100u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_9:
    v5[2] = self->_sizeBeforeCopy;
    *(v5 + 54) |= 2u;
  }

LABEL_10:
  v9 = [(NSString *)self->_linkTarget copyWithZone:a3];
  v10 = v5[8];
  v5[8] = v9;

  v11 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v12 = v5[6];
  v5[6] = v11;

  v13 = [(NSData *)self->_sha256Signature copyWithZone:a3];
  v14 = v5[11];
  v5[11] = v13;

  v15 = self->_has;
  if ((v15 & 0x40) != 0)
  {
    *(v5 + 14) = self->_flags;
    *(v5 + 54) |= 0x40u;
    v15 = self->_has;
    if ((v15 & 0x20) == 0)
    {
LABEL_12:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }
  }

  else if ((v15 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  *(v5 + 10) = self->_contentEncodingMethod;
  *(v5 + 54) |= 0x20u;
  v15 = self->_has;
  if ((v15 & 0x10) == 0)
  {
LABEL_13:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    *(v5 + 104) = self->_isMMCSEncryptedOnly;
    *(v5 + 54) |= 0x1000u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_15;
  }

LABEL_27:
  *(v5 + 9) = self->_contentCompressionMethod;
  *(v5 + 54) |= 0x10u;
  v15 = self->_has;
  if ((v15 & 0x1000) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v15 & 4) != 0)
  {
LABEL_15:
    v5[3] = self->_sourceDeviceInode;
    *(v5 + 54) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  relativePath = self->_relativePath;
  if (relativePath | *(v4 + 10))
  {
    if (![(NSString *)relativePath isEqual:?])
    {
      goto LABEL_77;
    }
  }

  has = self->_has;
  v7 = *(v4 + 54);
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_birth != *(v4 + 8))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 54) & 0x200) == 0 || self->_modified != *(v4 + 19))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 54) & 0x200) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 54) & 0x400) == 0 || self->_statusChanged != *(v4 + 24))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 54) & 0x400) != 0)
  {
    goto LABEL_77;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_size != *(v4 + 1))
    {
      goto LABEL_77;
    }
  }

  else if (v7)
  {
    goto LABEL_77;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_groupID != *(v4 + 15))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 54) & 0x800) == 0 || self->_userID != *(v4 + 25))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 54) & 0x800) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 54) & 0x100) == 0 || self->_mode != *(v4 + 18))
    {
      goto LABEL_77;
    }
  }

  else if ((*(v4 + 54) & 0x100) != 0)
  {
    goto LABEL_77;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_sizeBeforeCopy != *(v4 + 2))
    {
      goto LABEL_77;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_77;
  }

  linkTarget = self->_linkTarget;
  if (linkTarget | *(v4 + 8) && ![(NSString *)linkTarget isEqual:?])
  {
    goto LABEL_77;
  }

  encryptionKey = self->_encryptionKey;
  if (encryptionKey | *(v4 + 6))
  {
    if (![(NSData *)encryptionKey isEqual:?])
    {
      goto LABEL_77;
    }
  }

  sha256Signature = self->_sha256Signature;
  if (sha256Signature | *(v4 + 11))
  {
    if (![(NSData *)sha256Signature isEqual:?])
    {
      goto LABEL_77;
    }
  }

  v11 = self->_has;
  v12 = *(v4 + 54);
  if ((v11 & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_flags != *(v4 + 14))
    {
      goto LABEL_77;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_77;
  }

  if ((v11 & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_contentEncodingMethod != *(v4 + 10))
    {
      goto LABEL_77;
    }
  }

  else if ((v12 & 0x20) != 0)
  {
    goto LABEL_77;
  }

  if ((v11 & 0x10) != 0)
  {
    if ((v12 & 0x10) == 0 || self->_contentCompressionMethod != *(v4 + 9))
    {
      goto LABEL_77;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(v4 + 54) & 0x1000) == 0)
    {
      goto LABEL_67;
    }

LABEL_77:
    v13 = 0;
    goto LABEL_78;
  }

  if ((*(v4 + 54) & 0x1000) == 0)
  {
    goto LABEL_77;
  }

  v14 = *(v4 + 104);
  if (self->_isMMCSEncryptedOnly)
  {
    if ((*(v4 + 104) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  else if (*(v4 + 104))
  {
    goto LABEL_77;
  }

LABEL_67:
  if ((v11 & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_sourceDeviceInode != *(v4 + 3))
    {
      goto LABEL_77;
    }

    v13 = 1;
  }

  else
  {
    v13 = (v12 & 4) == 0;
  }

LABEL_78:

  return v13;
}

- (unint64_t)hash
{
  v22 = [(NSString *)self->_relativePath hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v21 = 2654435761 * self->_birth;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v20 = 2654435761 * self->_modified;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v19 = 2654435761 * self->_statusChanged;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v19 = 0;
  if (has)
  {
LABEL_5:
    v18 = 2654435761 * self->_size;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v18 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_groupID;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v5 = 2654435761 * self->_userID;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v6 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_15:
  v5 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v6 = 2654435761 * self->_mode;
  if ((has & 2) != 0)
  {
LABEL_9:
    v7 = 2654435761 * self->_sizeBeforeCopy;
    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
LABEL_18:
  v8 = [(NSString *)self->_linkTarget hash];
  v9 = [(NSData *)self->_encryptionKey hash];
  v10 = [(NSData *)self->_sha256Signature hash];
  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v12 = 2654435761 * self->_flags;
    if ((v11 & 0x20) != 0)
    {
LABEL_20:
      v13 = 2654435761 * self->_contentEncodingMethod;
      if ((v11 & 0x10) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
    if ((v11 & 0x20) != 0)
    {
      goto LABEL_20;
    }
  }

  v13 = 0;
  if ((v11 & 0x10) != 0)
  {
LABEL_21:
    v14 = 2654435761 * self->_contentCompressionMethod;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    v15 = 0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v16 = 0;
    return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_26:
  v14 = 0;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_27;
  }

LABEL_22:
  v15 = 2654435761 * self->_isMMCSEncryptedOnly;
  if ((v11 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v16 = 2654435761 * self->_sourceDeviceInode;
  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 10))
  {
    [(MBCKFileAttributesArchive *)self setRelativePath:?];
    v4 = v7;
  }

  v5 = *(v4 + 54);
  if ((v5 & 8) != 0)
  {
    self->_birth = *(v4 + 8);
    *&self->_has |= 8u;
    v5 = *(v4 + 54);
    if ((v5 & 0x200) == 0)
    {
LABEL_5:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*(v4 + 54) & 0x200) == 0)
  {
    goto LABEL_5;
  }

  self->_modified = *(v4 + 19);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 54);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_statusChanged = *(v4 + 24);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 54);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_size = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 54);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_groupID = *(v4 + 15);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 54);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_userID = *(v4 + 25);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 54);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_33:
  self->_mode = *(v4 + 18);
  *&self->_has |= 0x100u;
  if ((*(v4 + 54) & 2) != 0)
  {
LABEL_11:
    self->_sizeBeforeCopy = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_12:
  if (*(v4 + 8))
  {
    [(MBCKFileAttributesArchive *)self setLinkTarget:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(MBCKFileAttributesArchive *)self setEncryptionKey:?];
    v4 = v7;
  }

  if (*(v4 + 11))
  {
    [(MBCKFileAttributesArchive *)self setSha256Signature:?];
    v4 = v7;
  }

  v6 = *(v4 + 54);
  if ((v6 & 0x40) != 0)
  {
    self->_flags = *(v4 + 14);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 54);
    if ((v6 & 0x20) == 0)
    {
LABEL_20:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_20;
  }

  self->_contentEncodingMethod = *(v4 + 10);
  *&self->_has |= 0x20u;
  v6 = *(v4 + 54);
  if ((v6 & 0x10) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_contentCompressionMethod = *(v4 + 9);
  *&self->_has |= 0x10u;
  v6 = *(v4 + 54);
  if ((v6 & 0x1000) == 0)
  {
LABEL_22:
    if ((v6 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_38:
  self->_isMMCSEncryptedOnly = *(v4 + 104);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 54) & 4) != 0)
  {
LABEL_23:
    self->_sourceDeviceInode = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_24:
}

@end