@interface DMFFetchStreamEventsRequest
- (DMFFetchStreamEventsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchStreamEventsRequest

- (DMFFetchStreamEventsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = DMFFetchStreamEventsRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"eventIdentifiers"];
    eventIdentifiers = v5->_eventIdentifiers;
    v5->_eventIdentifiers = v12;

    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFFetchStreamEventsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFFetchStreamEventsRequest *)self organizationIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFFetchStreamEventsRequest *)self eventIdentifiers];
  [v4 encodeObject:v6 forKey:@"eventIdentifiers"];

  v7 = [(DMFFetchStreamEventsRequest *)self startDate];
  [v4 encodeObject:v7 forKey:@"startDate"];
}

@end