@interface IMDSpotlightDataProvider
+ (id)_createDataProviders;
+ (id)_dataProviders;
+ (id)dataProviderForIdentifier:(id)identifier;
- (id)dataForGUID:(id)d error:(id *)error;
- (id)typeIdentifier;
@end

@implementation IMDSpotlightDataProvider

+ (id)_createDataProviders
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(IMDSpotlightLinkDataProvider);
  v8[0] = v2;
  v3 = objc_alloc_init(IMDSpotlightTextDataProvider);
  v8[1] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v8, 2);

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_dataProviders
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9218C;
  block[3] = &unk_1E7CB6A70;
  block[4] = self;
  if (qword_1EBA540C8 != -1)
  {
    dispatch_once(&qword_1EBA540C8, block);
  }

  v2 = qword_1EBA540C0;

  return v2;
}

+ (id)dataProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = objc_msgSend__dataProviders(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, identifierCopy);

  return v9;
}

- (id)typeIdentifier
{
  v2 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v2);
}

- (id)dataForGUID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v5, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v6);
}

@end