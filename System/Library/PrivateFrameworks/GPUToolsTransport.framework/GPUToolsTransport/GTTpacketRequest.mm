@interface GTTpacketRequest
- (GTTpacketRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTTpacketRequest

- (void)encodeWithCoder:(id)coder
{
  selector = self->_selector;
  coderCopy = coder;
  [coderCopy encodeObject:selector forKey:@"selector"];
  [coderCopy encodeObject:self->_requests forKey:@"request"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeInt64:self->_requestID forKey:@"requestID"];
}

- (GTTpacketRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = GTTpacketRequest;
  v5 = [(GTTpacketRequest *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selector"];
    selector = v5->_selector;
    v5->_selector = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"request"];
    requests = v5->_requests;
    v5->_requests = v14;
  }

  return v5;
}

@end