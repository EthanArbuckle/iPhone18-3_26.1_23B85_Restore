@interface BPSWindowState
- (BOOL)isEqual:(id)a3;
- (BPSWindowState)initWithCoder:(id)a3;
- (BPSWindowState)initWithIdentifier:(id)a3 aggregate:(id)a4 completed:(BOOL)a5;
- (id)metadata;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BPSWindowState

- (BPSWindowState)initWithIdentifier:(id)a3 aggregate:(id)a4 completed:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = BPSWindowState;
  v11 = [(BPSWindowState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, a3);
    objc_storeStrong(&v12->_aggregate, a4);
    v12->_completed = a5;
  }

  return v12;
}

- (id)metadata
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(BPSWindowState *)self identifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(BPSWindowState *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(BPSWindowState *)self identifier];
  [v6 encodeObject:v4 forKey:@"identifier"];

  v5 = [(BPSWindowState *)self aggregate];
  [v6 encodeObject:v5 forKey:@"aggregate"];

  [v6 encodeBool:-[BPSWindowState completed](self forKey:{"completed"), @"completed"}];
}

- (BPSWindowState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"aggregate"];

    if (v7)
    {
      self = -[BPSWindowState initWithIdentifier:aggregate:completed:](self, "initWithIdentifier:aggregate:completed:", v5, v7, [v4 decodeBoolForKey:@"completed"]);
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end