@interface DMFFetchStreamEventsRequest
- (DMFFetchStreamEventsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchStreamEventsRequest

- (DMFFetchStreamEventsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = DMFFetchStreamEventsRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"eventIdentifiers"];
    eventIdentifiers = v5->_eventIdentifiers;
    v5->_eventIdentifiers = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = DMFFetchStreamEventsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchStreamEventsRequest *)self organizationIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"organizationIdentifier"];

  eventIdentifiers = [(DMFFetchStreamEventsRequest *)self eventIdentifiers];
  [coderCopy encodeObject:eventIdentifiers forKey:@"eventIdentifiers"];

  startDate = [(DMFFetchStreamEventsRequest *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];
}

@end