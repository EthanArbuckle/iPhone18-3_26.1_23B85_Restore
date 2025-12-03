@interface DMFFetchStreamEventsResultObject
- (DMFFetchStreamEventsResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchStreamEventsResultObject

- (id)description
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = @"eventStatuses";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFFetchStreamEventsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = DMFFetchStreamEventsResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"eventStatuses"];
    eventStatuses = v5->_eventStatuses;
    v5->_eventStatuses = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchStreamEventsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchStreamEventsResultObject *)self eventStatuses:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"eventStatuses"];
}

@end