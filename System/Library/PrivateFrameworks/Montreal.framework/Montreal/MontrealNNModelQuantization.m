@interface MontrealNNModelQuantization
- (MontrealNNModelQuantization)initWithDictionary:(id)a3;
@end

@implementation MontrealNNModelQuantization

- (MontrealNNModelQuantization)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MontrealNNModelQuantization;
  v7 = [(MontrealNNModelQuantization *)&v15 init];
  if (v7)
  {
    v8 = objc_msgSend_exMRL_stringForKey_(v4, v5, off_1EB013468, v6);
    weightStorage = v7->_weightStorage;
    v7->_weightStorage = v8;

    v12 = objc_msgSend_exMRL_numberForKey_(v4, v10, off_1EB013470, v11);
    weightStorageRange = v7->_weightStorageRange;
    v7->_weightStorageRange = v12;
  }

  return v7;
}

@end