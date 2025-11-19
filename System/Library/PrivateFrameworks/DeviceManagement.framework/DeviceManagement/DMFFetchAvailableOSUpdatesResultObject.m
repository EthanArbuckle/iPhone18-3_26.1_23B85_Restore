@interface DMFFetchAvailableOSUpdatesResultObject
- (DMFFetchAvailableOSUpdatesResultObject)initWithCoder:(id)a3;
- (DMFFetchAvailableOSUpdatesResultObject)initWithUpdate:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchAvailableOSUpdatesResultObject

- (DMFFetchAvailableOSUpdatesResultObject)initWithUpdate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchAvailableOSUpdatesResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    update = v5->_update;
    v5->_update = v6;
  }

  return v5;
}

- (DMFFetchAvailableOSUpdatesResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchAvailableOSUpdatesResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"update"];
    update = v5->_update;
    v5->_update = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchAvailableOSUpdatesResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchAvailableOSUpdatesResultObject *)self update:v6.receiver];
  [v4 encodeObject:v5 forKey:@"update"];
}

- (id)description
{
  v3 = [(DMFFetchAvailableOSUpdatesResultObject *)self update];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(DMFFetchAvailableOSUpdatesResultObject *)self update];
    v6 = [v5 description];
    v7 = [v4 stringWithFormat:@"%@\n", v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end