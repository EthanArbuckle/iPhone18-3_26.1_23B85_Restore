@interface MADChangeTokenEntry
+ (id)entryWithTokenID:(unint64_t)d tokenType:(unint64_t)type tokenData:(id)data date:(id)date version:(int)version;
- (MADChangeTokenEntry)initWithTokenID:(unint64_t)d tokenType:(unint64_t)type tokenData:(id)data date:(id)date version:(int)version;
@end

@implementation MADChangeTokenEntry

- (MADChangeTokenEntry)initWithTokenID:(unint64_t)d tokenType:(unint64_t)type tokenData:(id)data date:(id)date version:(int)version
{
  dataCopy = data;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = MADChangeTokenEntry;
  v14 = [(MADChangeTokenEntry *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_tokenID = d;
    v14->_tokenType = type;
    v16 = [MEMORY[0x1E695DEF0] dataWithData:dataCopy];
    tokenData = v15->_tokenData;
    v15->_tokenData = v16;

    objc_storeStrong(&v15->_date, date);
    v15->_version = version;
  }

  return v15;
}

+ (id)entryWithTokenID:(unint64_t)d tokenType:(unint64_t)type tokenData:(id)data date:(id)date version:(int)version
{
  v7 = *&version;
  dataCopy = data;
  dateCopy = date;
  v13 = [objc_alloc(objc_opt_class()) initWithTokenID:d tokenType:type tokenData:dataCopy date:dateCopy version:v7];

  return v13;
}

@end