@interface DMFSendEventRequest
- (DMFSendEventRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSendEventRequest

- (DMFSendEventRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = DMFSendEventRequest;
  v5 = [(CATTaskRequest *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"inReplyTo"];
    inReplyTo = v5->_inReplyTo;
    v5->_inReplyTo = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"eventType"];
    eventType = v5->_eventType;
    v5->_eventType = v13;

    v29 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v29 setWithObjects:{v28, v27, v15, v16, v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"details"];
    details = v5->_details;
    v5->_details = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFSendEventRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(DMFSendEventRequest *)self organizationIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFSendEventRequest *)self inReplyTo];
  [v4 encodeObject:v6 forKey:@"inReplyTo"];

  v7 = [(DMFSendEventRequest *)self eventType];
  [v4 encodeObject:v7 forKey:@"eventType"];

  v8 = [(DMFSendEventRequest *)self details];
  [v4 encodeObject:v8 forKey:@"details"];
}

@end