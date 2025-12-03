@interface DMFFetchAvailableOSUpdatesResultObject
- (DMFFetchAvailableOSUpdatesResultObject)initWithCoder:(id)coder;
- (DMFFetchAvailableOSUpdatesResultObject)initWithUpdate:(id)update;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchAvailableOSUpdatesResultObject

- (DMFFetchAvailableOSUpdatesResultObject)initWithUpdate:(id)update
{
  updateCopy = update;
  v9.receiver = self;
  v9.super_class = DMFFetchAvailableOSUpdatesResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [updateCopy copy];
    update = v5->_update;
    v5->_update = v6;
  }

  return v5;
}

- (DMFFetchAvailableOSUpdatesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchAvailableOSUpdatesResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"update"];
    update = v5->_update;
    v5->_update = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchAvailableOSUpdatesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchAvailableOSUpdatesResultObject *)self update:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"update"];
}

- (id)description
{
  update = [(DMFFetchAvailableOSUpdatesResultObject *)self update];

  if (update)
  {
    v4 = MEMORY[0x1E696AEC0];
    update2 = [(DMFFetchAvailableOSUpdatesResultObject *)self update];
    v6 = [update2 description];
    v7 = [v4 stringWithFormat:@"%@\n", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end