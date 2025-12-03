@interface EscrowPrerecord
+ (id)createPrerecordFromCandidate:(id)candidate storedCertificate:(id)certificate request:(id)request error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPassphraseType:(id)type;
- (int)passphraseType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsPassphraseType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FourDigitNumeric"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"SixDigitNumeric"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Complex"])
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
  dictionaryRepresentation = [(EscrowPrerecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(EscrowPrerecordPasscodeGeneration *)passcodeGeneration dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"passcodeGeneration"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_iCloudEnvironment)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_escrowBaseURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dsid)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_escrowBlob)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_sosPeerID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_sosBackupKeybagPassword)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_sosBackupKeybagDigest)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_timestamp)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bottleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_escrowedSPKI)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    passphraseType = self->_passphraseType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_duplicateEscrowBlob)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_passcodeGeneration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_iCloudEnvironment)
  {
    [toCopy setICloudEnvironment:?];
    toCopy = v5;
  }

  if (self->_escrowBaseURL)
  {
    [v5 setEscrowBaseURL:?];
    toCopy = v5;
  }

  if (self->_dsid)
  {
    [v5 setDsid:?];
    toCopy = v5;
  }

  if (self->_escrowBlob)
  {
    [v5 setEscrowBlob:?];
    toCopy = v5;
  }

  if (self->_sosPeerID)
  {
    [v5 setSosPeerID:?];
    toCopy = v5;
  }

  if (self->_sosBackupKeybagPassword)
  {
    [v5 setSosBackupKeybagPassword:?];
    toCopy = v5;
  }

  if (self->_sosBackupKeybagDigest)
  {
    [v5 setSosBackupKeybagDigest:?];
    toCopy = v5;
  }

  if (self->_timestamp)
  {
    [v5 setTimestamp:?];
    toCopy = v5;
  }

  if (self->_bottleID)
  {
    [v5 setBottleID:?];
    toCopy = v5;
  }

  if (self->_escrowedSPKI)
  {
    [v5 setEscrowedSPKI:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 18) = self->_passphraseType;
    *(toCopy + 112) |= 1u;
  }

  if (self->_duplicateEscrowBlob)
  {
    [v5 setDuplicateEscrowBlob:?];
    toCopy = v5;
  }

  if (self->_passcodeGeneration)
  {
    [v5 setPasscodeGeneration:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_iCloudEnvironment copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_escrowBaseURL copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_dsid copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_escrowBlob copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_sosPeerID copyWithZone:zone];
  v15 = v5[12];
  v5[12] = v14;

  v16 = [(NSData *)self->_sosBackupKeybagPassword copyWithZone:zone];
  v17 = v5[11];
  v5[11] = v16;

  v18 = [(NSData *)self->_sosBackupKeybagDigest copyWithZone:zone];
  v19 = v5[10];
  v5[10] = v18;

  v20 = [(NSString *)self->_timestamp copyWithZone:zone];
  v21 = v5[13];
  v5[13] = v20;

  v22 = [(NSString *)self->_bottleID copyWithZone:zone];
  v23 = v5[1];
  v5[1] = v22;

  v24 = [(NSData *)self->_escrowedSPKI copyWithZone:zone];
  v25 = v5[6];
  v5[6] = v24;

  if (*&self->_has)
  {
    *(v5 + 18) = self->_passphraseType;
    *(v5 + 112) |= 1u;
  }

  v26 = [(NSData *)self->_duplicateEscrowBlob copyWithZone:zone];
  v27 = v5[3];
  v5[3] = v26;

  v28 = [(EscrowPrerecordPasscodeGeneration *)self->_passcodeGeneration copyWithZone:zone];
  v29 = v5[8];
  v5[8] = v28;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  iCloudEnvironment = self->_iCloudEnvironment;
  if (iCloudEnvironment | *(equalCopy + 7))
  {
    if (![(NSString *)iCloudEnvironment isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowBaseURL = self->_escrowBaseURL;
  if (escrowBaseURL | *(equalCopy + 4))
  {
    if (![(NSString *)escrowBaseURL isEqual:?])
    {
      goto LABEL_31;
    }
  }

  dsid = self->_dsid;
  if (dsid | *(equalCopy + 2))
  {
    if (![(NSString *)dsid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowBlob = self->_escrowBlob;
  if (escrowBlob | *(equalCopy + 5))
  {
    if (![(NSData *)escrowBlob isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosPeerID = self->_sosPeerID;
  if (sosPeerID | *(equalCopy + 12))
  {
    if (![(NSString *)sosPeerID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosBackupKeybagPassword = self->_sosBackupKeybagPassword;
  if (sosBackupKeybagPassword | *(equalCopy + 11))
  {
    if (![(NSData *)sosBackupKeybagPassword isEqual:?])
    {
      goto LABEL_31;
    }
  }

  sosBackupKeybagDigest = self->_sosBackupKeybagDigest;
  if (sosBackupKeybagDigest | *(equalCopy + 10))
  {
    if (![(NSData *)sosBackupKeybagDigest isEqual:?])
    {
      goto LABEL_31;
    }
  }

  timestamp = self->_timestamp;
  if (timestamp | *(equalCopy + 13))
  {
    if (![(NSString *)timestamp isEqual:?])
    {
      goto LABEL_31;
    }
  }

  bottleID = self->_bottleID;
  if (bottleID | *(equalCopy + 1))
  {
    if (![(NSString *)bottleID isEqual:?])
    {
      goto LABEL_31;
    }
  }

  escrowedSPKI = self->_escrowedSPKI;
  if (escrowedSPKI | *(equalCopy + 6))
  {
    if (![(NSData *)escrowedSPKI isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v15 = *(equalCopy + 112);
  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_passphraseType != *(equalCopy + 18))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 112))
  {
LABEL_31:
    v18 = 0;
    goto LABEL_32;
  }

  duplicateEscrowBlob = self->_duplicateEscrowBlob;
  if (duplicateEscrowBlob | *(equalCopy + 3) && ![(NSData *)duplicateEscrowBlob isEqual:?])
  {
    goto LABEL_31;
  }

  passcodeGeneration = self->_passcodeGeneration;
  if (passcodeGeneration | *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(EscrowPrerecord *)self setICloudEnvironment:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(EscrowPrerecord *)self setEscrowBaseURL:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(EscrowPrerecord *)self setDsid:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(EscrowPrerecord *)self setEscrowBlob:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 12))
  {
    [(EscrowPrerecord *)self setSosPeerID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 11))
  {
    [(EscrowPrerecord *)self setSosBackupKeybagPassword:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 10))
  {
    [(EscrowPrerecord *)self setSosBackupKeybagDigest:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 13))
  {
    [(EscrowPrerecord *)self setTimestamp:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 1))
  {
    [(EscrowPrerecord *)self setBottleID:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 6))
  {
    [(EscrowPrerecord *)self setEscrowedSPKI:?];
    fromCopy = v7;
  }

  if (fromCopy[28])
  {
    self->_passphraseType = fromCopy[18];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(EscrowPrerecord *)self setDuplicateEscrowBlob:?];
    fromCopy = v7;
  }

  passcodeGeneration = self->_passcodeGeneration;
  v6 = *(fromCopy + 8);
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

+ (id)createPrerecordFromCandidate:(id)candidate storedCertificate:(id)certificate request:(id)request error:(id *)error
{
  candidateCopy = candidate;
  certificateCopy = certificate;
  requestCopy = request;
  recordContents = [candidateCopy recordContents];
  [requestCopy setEscrowRecord:recordContents];

  sosPeerID = [candidateCopy sosPeerID];
  [requestCopy setRecordID:sosPeerID];

  v14 = [[EscrowEnrollmentRequest alloc] initWithRequest:requestCopy];
  recoveryPassphrase = [(EscrowGenericRequest *)v14 recoveryPassphrase];
  v16 = [recoveryPassphrase length];

  if (v16)
  {
    escrowCertificate = [certificateCopy escrowCertificate];
    v18 = [EscrowService createEscrowBlobWithCertificate:escrowCertificate escrowRequest:v14 error:error];

    if ([requestCopy requiresDoubleEnrollment])
    {
      duplicateEscrowCertificate = [certificateCopy duplicateEscrowCertificate];

      v20 = CloudServicesLog();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (duplicateEscrowCertificate)
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "double enrollment: creating duplicate escrow blob for prerecord", buf, 2u);
        }

        [(EscrowGenericRequest *)v14 setDuplicate:1];
        duplicateEscrowCertificate2 = [certificateCopy duplicateEscrowCertificate];
        v41 = 0;
        v23 = [EscrowService createEscrowBlobWithCertificate:duplicateEscrowCertificate2 escrowRequest:v14 error:&v41];
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
          sub_10004E580(error, v35);
        }

        v27 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    metadata = [requestCopy metadata];
    v29 = [metadata objectForKeyedSubscript:kSecureBackupUsesNumericPassphraseKey];
    bOOLValue = [v29 BOOLValue];

    if (bOOLValue)
    {
      metadata2 = [requestCopy metadata];
      v32 = [metadata2 objectForKeyedSubscript:kSecureBackupNumericPassphraseLengthKey];
      unsignedIntegerValue = [v32 unsignedIntegerValue];

      if (unsignedIntegerValue == 4)
      {
        v34 = 1;
        goto LABEL_32;
      }

      if (unsignedIntegerValue == 6)
      {
        v34 = 2;
LABEL_32:
        v37 = CloudServicesLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          metadata3 = [requestCopy metadata];
          *buf = 67109378;
          LODWORD(v43[0]) = v34;
          WORD2(v43[0]) = 2112;
          *(v43 + 6) = metadata3;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "createPrerecordFromCandidate: Successfully made an escrow blob: type: %d metadata: %@", buf, 0x12u);
        }

        v39 = [[EscrowPrerecord alloc] initWithCandidate:candidateCopy certificate:certificateCopy escrowBlob:v18 passphraseType:v34];
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

  if (error)
  {
    [CloudServicesError errorWithCode:22 error:0 format:@"Missing required parameters"];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_37:

  return v27;
}

@end