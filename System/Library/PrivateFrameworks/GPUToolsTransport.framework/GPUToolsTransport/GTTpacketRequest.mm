@interface GTTpacketRequest
- (GTTpacketRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTTpacketRequest

- (void)encodeWithCoder:(id)a3
{
  selector = self->_selector;
  v5 = a3;
  [v5 encodeObject:selector forKey:@"selector"];
  [v5 encodeObject:self->_requests forKey:@"request"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeInt64:self->_requestID forKey:@"requestID"];
}

- (GTTpacketRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GTTpacketRequest;
  v5 = [(GTTpacketRequest *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selector"];
    selector = v5->_selector;
    v5->_selector = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"request"];
    requests = v5->_requests;
    v5->_requests = v14;
  }

  return v5;
}

@end