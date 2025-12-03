@interface AppleIDPasswordMetadata
- (AppleIDPasswordMetadata)initWithCoder:(id)coder;
- (AppleIDPasswordMetadata)initWithProto:(id)proto salt:(id)salt iterations:(int)iterations;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppleIDPasswordMetadata

- (AppleIDPasswordMetadata)initWithProto:(id)proto salt:(id)salt iterations:(int)iterations
{
  protoCopy = proto;
  saltCopy = salt;
  v14.receiver = self;
  v14.super_class = AppleIDPasswordMetadata;
  v11 = [(AppleIDPasswordMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_proto, proto);
    objc_storeStrong(&v12->_salt, salt);
    v12->_iterations = iterations;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_proto(self, v4, v5);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"proto");

  v10 = objc_msgSend_salt(self, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"salt");

  v14 = objc_msgSend_iterations(self, v12, v13);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v15, v14, @"iterations");
}

- (AppleIDPasswordMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AppleIDPasswordMetadata;
  v5 = [(AppleIDPasswordMetadata *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"proto");
    proto = v5->_proto;
    v5->_proto = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"salt");
    salt = v5->_salt;
    v5->_salt = v12;

    v5->_iterations = objc_msgSend_decodeInt32ForKey_(coderCopy, v14, @"iterations");
  }

  return v5;
}

@end