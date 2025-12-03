@interface VCPProcessingStatusEntry
+ (id)entryWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate errorCode:(unint64_t)code errorLine:(unint64_t)self0;
+ (id)entryWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate mediaType:(int64_t)type mediaSubtypes:(int64_t)self0 errorCode:(unint64_t)self1 errorLine:(unint64_t)self2;
- (VCPProcessingStatusEntry)initWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate mediaType:(int64_t)type mediaSubtypes:(int64_t)self0 errorCode:(unint64_t)self1 errorLine:(unint64_t)self2;
@end

@implementation VCPProcessingStatusEntry

- (VCPProcessingStatusEntry)initWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate mediaType:(int64_t)type mediaSubtypes:(int64_t)self0 errorCode:(unint64_t)self1 errorLine:(unint64_t)self2
{
  identifierCopy = identifier;
  dateCopy = date;
  attemptDateCopy = attemptDate;
  v25.receiver = self;
  v25.super_class = VCPProcessingStatusEntry;
  v22 = [(VCPProcessingStatusEntry *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_localIdentifier, identifier);
    v23->_taskID = d;
    v23->_status = status;
    v23->_attempts = attempts;
    objc_storeStrong(&v23->_lastAttemptDate, date);
    objc_storeStrong(&v23->_nextAttemptDate, attemptDate);
    v23->_mediaType = type;
    v23->_mediaSubtypes = subtypes;
    v23->_errorCode = code;
    v23->_errorLine = line;
  }

  return v23;
}

+ (id)entryWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate errorCode:(unint64_t)code errorLine:(unint64_t)self0
{
  attemptDateCopy = attemptDate;
  dateCopy = date;
  identifierCopy = identifier;
  v18 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:identifierCopy taskID:d status:status attempts:attempts lastAttemptDate:dateCopy andNextAttemptDate:attemptDateCopy mediaType:0 mediaSubtypes:0 errorCode:code errorLine:line];

  return v18;
}

+ (id)entryWithLocalIdentifier:(id)identifier taskID:(unint64_t)d status:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date andNextAttemptDate:(id)attemptDate mediaType:(int64_t)type mediaSubtypes:(int64_t)self0 errorCode:(unint64_t)self1 errorLine:(unint64_t)self2
{
  attemptDateCopy = attemptDate;
  dateCopy = date;
  identifierCopy = identifier;
  v20 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:identifierCopy taskID:d status:status attempts:attempts lastAttemptDate:dateCopy andNextAttemptDate:attemptDateCopy mediaType:type mediaSubtypes:subtypes errorCode:code errorLine:line];

  return v20;
}

@end