@interface EscrowPrerecord
+ (id)createPrerecordFromCandidate:(id)a3 storedCertificate:(id)a4 request:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPassphraseType:(id)a3;
- (int)passphraseType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation EscrowPrerecord

- (int)passphraseType
{
  if (*&self->_has)
  {
    return self->_passphraseType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPassphraseType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FourDigitNumeric"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SixDigitNumeric"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Complex"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = EscrowPrerecord;
  v3 = [(EscrowPrerecord *)&v7 description];
  v4 = [(EscrowPrerecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  iCloudEnvironment = self->_iCloudEnvironment;
  if (iCloudEnvironment)
  {
    [v3 setObject:iCloudEnvironment forKey:@"iCloudEnvironment"];
  }

  escrowBaseURL = self->_escrowBaseURL;
  if (escrowBaseURL)
  {
    [v4 setObject:escrowBaseURL forKey:@"escrowBaseURL"];
  }

  dsid = self->_dsid;
  if (dsid)
  {
    [v4 setObject:dsid forKey:@"dsid"];
  }

  escrowBlob = self->_escrowBlob;
  if (escrowBlob)
  {
    [v4 setObject:escrowBlob forKey:@"escrowBlob"];
  }

  sosPeerID = self->_sosPeerID;
  if (sosPeerID)
  {
    [v4 setObject:sosPeerID forKey:@"sosPeerID"];
  }

  sosBackupKeybagPassword = self->_sosBackupKeybagPassword;
  if (sosBackupKeybagPassword)
  {
    [v4 setObject:sosBackupKeybagPassword forKey:@"sosBackupKeybagPassword"];
  }

  sosBackupKeybagDigest = self->_sosBackupKeybagDigest;
  if (sosBackupKeybagDigest)
  {
    [v4 setObject:sosBackupKeybagDigest forKey:@"sosBackupKeybagDigest"];
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    [v4 setObject:timestamp forKey:@"timestamp"];
  }

  bottleID = self->_bottleID;
  if (bottleID)
  {
    [v4 setObject:bottleID forKey:@"bottleID"];
  }

  escrowedSPKI = self->_escrowedSPKI;
  if (escrowedSPKI)
  {
    [v4 setObject:escrowedSPKI forKey:@"escrowedSPKI"];
  }

  if (*&self->_has)
  {
    passphraseType = self->_passphraseType;
    if (passphraseType >= 4)
    {
      v16 = [NSString stringWithFormat:@"(unknown: %i)", self->_passphraseType];
    }

    else
    {
      v16 = off_100075C68[passphraseType];
    }

    [v4 setObject:v16 forKey:@"passphraseType"];
  }

  duplicateEscrowBlob = self->_duplicateEscrowBlob;
  if (duplicateEscrowBlob)
  {
    [v4 setObject:duplicateEscrowBlob forKey:@"duplicateEscrowBlob"];
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration)
  {
    v19 = [(EscrowPrerecordPasscodeGeneration *)passcodeGeneration dictionaryRepresentation];
    [v4 setObject:v19 forKey:@"passcodeGeneration"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_iCloudEnvironment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_escrowBaseURL)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dsid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_escrowBlob)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_sosPeerID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sosBackupKeybagPassword)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_sosBackupKeybagDigest)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_timestamp)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bottleID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_escrowedSPKI)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    passphraseType = self->_passphraseType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_duplicateEscrowBlob)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_passcodeGeneration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_iCloudEnvironment)
  {
    [v4 setICloudEnvironment:?];
    v4 = v5;
  }

  if (self->_escrowBaseURL)
  {
    [v5 setEscrowBaseURL:?];
    v4 = v5;
  }

  if (self->_dsid)
  {
    [v5 setDsid:?];
    v4 = v5;
  }

  if (self->_escrowBlob)
  {
    [v5 setEscrowBlob:?];
    v4 = v5;
  }

  if (self->_sosPeerID)
  {
    [v5 setSosPeerID:?];
    v4 = v5;
  }

  if (self->_sosBackupKeybagPassword)
  {
    [v5 setSosBackupKeybagPassword:?];
    v4 = v5;
  }

  if (self->_sosBackupKeybagDigest)
  {
    [v5 setSosBackupKeybagDigest:?];
    v4 = v5;
  }

  if (self->_timestamp)
  {
    [v5 setTimestamp:?];
    v4 = v5;
  }

  if (self->_bottleID)
  {
    [v5 setBottleID:?];
    v4 = v5;
  }

  if (self->_escrowedSPKI)
  {
    [v5 setEscrowedSPKI:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 18) = self->_passphraseType;
    *(v4 + 112) |= 1u;
  }

  if (self->_duplicateEscrowBlob)
  {
    [v5 setDuplicateEscrowBlob:?];
    v4 = v5;
  }

  if (self->_passcodeGeneration)
  {
    [v5 setPasscodeGeneration:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_iCloudEnvironment copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_escrowBaseURL copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_dsid copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_escrowBlob copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_sosPeerID copyWithZone:a3];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSData *)self->_sosBackupKeybagPassword copyWithZone:a3];
  v17 = v5[11];
  v5[11] = v16;

  v18 = [(NSData *)self->_sosBackupKeybagDigest copyWithZone:a3];
  v19 = v5[10];
  v5[10] = v18;

  v20 = [(NSString *)self->_timestamp copyWithZone:a3];
  v21 = v5[13];
  v5[13] = v20;

  v22 = [(NSString *)self->_bottleID copyWithZone:a3];
  v23 = v5[1];
  v5[1] = v22;

  v24 = [(NSData *)self->_escrowedSPKI copyWithZone:a3];
  v25 = v5[6];
  v5[6] = v24;

  if (*&self->_has)
  {
    *(v5 + 18) = self->_passphraseType;
    *(v5 + 112) |= 1u;
  }

  v26 = [(NSData *)self->_duplicateEscrowBlob copyWithZone:a3];
  v27 = v5[3];
  v5[3] = v26;

  v28 = [(EscrowPrerecordPasscodeGeneration *)self->_passcodeGeneration copyWithZone:a3];
  v29 = v5[8];
  v5[8] = v28;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  iCloudEnvironment = self->_iCloudEnvironment;
  if (iCloudEnvironment | *(v4 + 7))
  {
    if (![(NSString *)iCloudEnvironment isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowBaseURL = self->_escrowBaseURL;
  if (escrowBaseURL | *(v4 + 4))
  {
    if (![(NSString *)escrowBaseURL isEqual:?])
    {
      goto LABEL_31;
    }
  }

  dsid = self->_dsid;
  if (dsid | *(v4 + 2))
  {
    if (![(NSString *)dsid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowBlob = self->_escrowBlob;
  if (escrowBlob | *(v4 + 5))
  {
    if (![(NSData *)escrowBlob isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosPeerID = self->_sosPeerID;
  if (sosPeerID | *(v4 + 12))
  {
    if (![(NSString *)sosPeerID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosBackupKeybagPassword = self->_sosBackupKeybagPassword;
  if (sosBackupKeybagPassword | *(v4 + 11))
  {
    if (![(NSData *)sosBackupKeybagPassword isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosBackupKeybagDigest = self->_sosBackupKeybagDigest;
  if (sosBackupKeybagDigest | *(v4 + 10))
  {
    if (![(NSData *)sosBackupKeybagDigest isEqual:?])
    {
      goto LABEL_31;
    }
  }

  timestamp = self->_timestamp;
  if (timestamp | *(v4 + 13))
  {
    if (![(NSString *)timestamp isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bottleID = self->_bottleID;
  if (bottleID | *(v4 + 1))
  {
    if (![(NSString *)bottleID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowedSPKI = self->_escrowedSPKI;
  if (escrowedSPKI | *(v4 + 6))
  {
    if (![(NSData *)escrowedSPKI isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v15 = *(v4 + 112);
  if (*&self->_has)
  {
    if ((*(v4 + 112) & 1) == 0 || self->_passphraseType != *(v4 + 18))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 112))
  {
LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  duplicateEscrowBlob = self->_duplicateEscrowBlob;
  if (duplicateEscrowBlob | *(v4 + 3) && ![(NSData *)duplicateEscrowBlob isEqual:?])
  {
    goto LABEL_31;
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration | *(v4 + 8))
  {
    v18 = [(EscrowPrerecordPasscodeGeneration *)passcodeGeneration isEqual:?];
  }

  else
  {
    v18 = 1;
  }

LABEL_32:

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_iCloudEnvironment hash];
  v4 = [(NSString *)self->_escrowBaseURL hash];
  v5 = [(NSString *)self->_dsid hash];
  v6 = [(NSData *)self->_escrowBlob hash];
  v7 = [(NSString *)self->_sosPeerID hash];
  v8 = [(NSData *)self->_sosBackupKeybagPassword hash];
  v9 = [(NSData *)self->_sosBackupKeybagDigest hash];
  v10 = [(NSString *)self->_timestamp hash];
  v11 = [(NSString *)self->_bottleID hash];
  v12 = [(NSData *)self->_escrowedSPKI hash];
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_passphraseType;
  }

  else
  {
    v13 = 0;
  }

  v14 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v15 = [(NSData *)self->_duplicateEscrowBlob hash];
  return v14 ^ v15 ^ [(EscrowPrerecordPasscodeGeneration *)self->_passcodeGeneration hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 7))
  {
    [(EscrowPrerecord *)self setICloudEnvironment:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(EscrowPrerecord *)self setEscrowBaseURL:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(EscrowPrerecord *)self setDsid:?];
    v4 = v7;
  }

  if (*(v4 + 5))
  {
    [(EscrowPrerecord *)self setEscrowBlob:?];
    v4 = v7;
  }

  if (*(v4 + 12))
  {
    [(EscrowPrerecord *)self setSosPeerID:?];
    v4 = v7;
  }

  if (*(v4 + 11))
  {
    [(EscrowPrerecord *)self setSosBackupKeybagPassword:?];
    v4 = v7;
  }

  if (*(v4 + 10))
  {
    [(EscrowPrerecord *)self setSosBackupKeybagDigest:?];
    v4 = v7;
  }

  if (*(v4 + 13))
  {
    [(EscrowPrerecord *)self setTimestamp:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(EscrowPrerecord *)self setBottleID:?];
    v4 = v7;
  }

  if (*(v4 + 6))
  {
    [(EscrowPrerecord *)self setEscrowedSPKI:?];
    v4 = v7;
  }

  if (v4[28])
  {
    self->_passphraseType = v4[18];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(EscrowPrerecord *)self setDuplicateEscrowBlob:?];
    v4 = v7;
  }

  passcodeGeneration = self->_passcodeGeneration;
  v6 = *(v4 + 8);
  if (passcodeGeneration)
  {
    if (v6)
    {
      [(EscrowPrerecordPasscodeGeneration *)passcodeGeneration mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(EscrowPrerecord *)self setPasscodeGeneration:?];
  }

  _objc_release_x1();
}

+ (id)createPrerecordFromCandidate:(id)a3 storedCertificate:(id)a4 request:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 recordContents];
  [v11 setEscrowRecord:v12];

  v13 = [v9 sosPeerID];
  [v11 setRecordID:v13];

  v14 = [[EscrowEnrollmentRequest alloc] initWithRequest:v11];
  v15 = [(EscrowGenericRequest *)v14 recoveryPassphrase];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [v10 escrowCertificate];
    v18 = [EscrowService createEscrowBlobWithCertificate:v17 escrowRequest:v14 error:a6];

    if ([v11 requiresDoubleEnrollment])
    {
      v19 = [v10 duplicateEscrowCertificate];

      v20 = CloudServicesLog();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "double enrollment: creating duplicate escrow blob for prerecord", buf, 2u);
        }

        [(EscrowGenericRequest *)v14 setDuplicate:1];
        v22 = [v10 duplicateEscrowCertificate];
        v41 = 0;
        v23 = [EscrowService createEscrowBlobWithCertificate:v22 escrowRequest:v14 error:&v41];
        v20 = v41;

        v24 = +[CloudServicesAnalytics logger];
        [v24 logResultForEvent:CloudServicesAnalyticsDoubleCreateBlob hardFailure:1 result:v20];

        if (!v23)
        {
          v25 = CloudServicesLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43[0] = v20;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "double enrollment: failed to create duplicate escrow blob: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "double enrollment: missing duplicate escrow certificate, not creating duplicate escrow blob for prerecord", buf, 2u);
        }

        v23 = 0;
      }

      if (!v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = 0;
      if (!v18)
      {
LABEL_24:
        v35 = CloudServicesLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_10004E580(a6, v35);
        }

        v27 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    v28 = [v11 metadata];
    v29 = [v28 objectForKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    v30 = [v29 BOOLValue];

    if (v30)
    {
      v31 = [v11 metadata];
      v32 = [v31 objectForKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
      v33 = [v32 unsignedIntegerValue];

      if (v33 == 4)
      {
        v34 = 1;
        goto LABEL_32;
      }

      if (v33 == 6)
      {
        v34 = 2;
LABEL_32:
        v37 = CloudServicesLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v11 metadata];
          *buf = 67109378;
          LODWORD(v43[0]) = v34;
          WORD2(v43[0]) = 2112;
          *(v43 + 6) = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "createPrerecordFromCandidate: Successfully made an escrow blob: type: %d metadata: %@", buf, 0x12u);
        }

        v39 = [[EscrowPrerecord alloc] initWithCandidate:v9 certificate:v10 escrowBlob:v18 passphraseType:v34];
        v27 = v39;
        if (v23)
        {
          [(EscrowPrerecord *)v39 setDuplicateEscrowBlob:v23];
        }

        goto LABEL_36;
      }

      v36 = CloudServicesLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Unknown numeric length of passcode?", buf, 2u);
      }
    }

    v34 = 3;
    goto LABEL_32;
  }

  v26 = CloudServicesLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_10004E60C(v26);
  }

  if (a6)
  {
    [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
    *a6 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_37:

  return v27;
}

@end