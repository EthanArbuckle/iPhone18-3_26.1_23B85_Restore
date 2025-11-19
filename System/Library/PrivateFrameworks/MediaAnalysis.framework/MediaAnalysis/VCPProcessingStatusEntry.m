@interface VCPProcessingStatusEntry
+ (id)entryWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 errorCode:(unint64_t)a9 errorLine:(unint64_t)a10;
+ (id)entryWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 mediaType:(int64_t)a9 mediaSubtypes:(int64_t)a10 errorCode:(unint64_t)a11 errorLine:(unint64_t)a12;
- (VCPProcessingStatusEntry)initWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 mediaType:(int64_t)a9 mediaSubtypes:(int64_t)a10 errorCode:(unint64_t)a11 errorLine:(unint64_t)a12;
@end

@implementation VCPProcessingStatusEntry

- (VCPProcessingStatusEntry)initWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 mediaType:(int64_t)a9 mediaSubtypes:(int64_t)a10 errorCode:(unint64_t)a11 errorLine:(unint64_t)a12
{
  v19 = a3;
  v20 = a7;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = VCPProcessingStatusEntry;
  v22 = [(VCPProcessingStatusEntry *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_localIdentifier, a3);
    v23->_taskID = a4;
    v23->_status = a5;
    v23->_attempts = a6;
    objc_storeStrong(&v23->_lastAttemptDate, a7);
    objc_storeStrong(&v23->_nextAttemptDate, a8);
    v23->_mediaType = a9;
    v23->_mediaSubtypes = a10;
    v23->_errorCode = a11;
    v23->_errorLine = a12;
  }

  return v23;
}

+ (id)entryWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 errorCode:(unint64_t)a9 errorLine:(unint64_t)a10
{
  v15 = a8;
  v16 = a7;
  v17 = a3;
  v18 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:v17 taskID:a4 status:a5 attempts:a6 lastAttemptDate:v16 andNextAttemptDate:v15 mediaType:0 mediaSubtypes:0 errorCode:a9 errorLine:a10];

  return v18;
}

+ (id)entryWithLocalIdentifier:(id)a3 taskID:(unint64_t)a4 status:(unint64_t)a5 attempts:(unint64_t)a6 lastAttemptDate:(id)a7 andNextAttemptDate:(id)a8 mediaType:(int64_t)a9 mediaSubtypes:(int64_t)a10 errorCode:(unint64_t)a11 errorLine:(unint64_t)a12
{
  v17 = a8;
  v18 = a7;
  v19 = a3;
  v20 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:v19 taskID:a4 status:a5 attempts:a6 lastAttemptDate:v18 andNextAttemptDate:v17 mediaType:a9 mediaSubtypes:a10 errorCode:a11 errorLine:a12];

  return v20;
}

@end