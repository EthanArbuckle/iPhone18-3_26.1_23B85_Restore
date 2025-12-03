@interface DMFSendEventRequest
- (DMFSendEventRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSendEventRequest

- (DMFSendEventRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = DMFSendEventRequest;
  v5 = [(CATTaskRequest *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"inReplyTo"];
    inReplyTo = v5->_inReplyTo;
    v5->_inReplyTo = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"eventType"];
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
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"details"];
    details = v5->_details;
    v5->_details = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMFSendEventRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMFSendEventRequest *)self organizationIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  inReplyTo = [(DMFSendEventRequest *)self inReplyTo];
  [coderCopy encodeObject:inReplyTo forKey:@"inReplyTo"];

  eventType = [(DMFSendEventRequest *)self eventType];
  [coderCopy encodeObject:eventType forKey:@"eventType"];

  details = [(DMFSendEventRequest *)self details];
  [coderCopy encodeObject:details forKey:@"details"];
}

@end