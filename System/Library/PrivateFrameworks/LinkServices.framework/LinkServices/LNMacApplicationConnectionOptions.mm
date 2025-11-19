@interface LNMacApplicationConnectionOptions
- (BOOL)isEqual:(id)a3;
- (LNMacApplicationConnectionOptions)init;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LNMacApplicationConnectionOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v8) = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v10.receiver = self;
  v10.super_class = LNMacApplicationConnectionOptions;
  if (![(LNConnectionOptions *)&v10 isEqual:v6])
  {
LABEL_7:
    LOBYTE(v8) = 0;
    goto LABEL_8;
  }

  v7 = [(LNMacApplicationConnectionOptions *)self isBackground];
  v8 = v7 ^ [(LNMacApplicationConnectionOptions *)v6 isBackground]^ 1;
LABEL_8:

LABEL_10:
  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNConnectionOptions *)self authenticationPolicy];
  v7 = @"Force Unlock";
  if (!v6)
  {
    v7 = @"Default";
  }

  v8 = v7;
  if ([(LNMacApplicationConnectionOptions *)self isBackground])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(LNConnectionOptions *)self initiatesAudioSession])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p, authenticationPolicy: %@, background: %@, initiatesAudioSession: %@>", v5, self, v8, v9, v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = LNMacApplicationConnectionOptions;
  v4 = [(LNConnectionOptions *)&v6 copyWithZone:a3];
  [v4 setBackground:{-[LNMacApplicationConnectionOptions isBackground](self, "isBackground")}];
  return v4;
}

- (LNMacApplicationConnectionOptions)init
{
  v6.receiver = self;
  v6.super_class = LNMacApplicationConnectionOptions;
  v2 = [(LNMacApplicationConnectionOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_background = 1;
    v4 = v2;
  }

  return v3;
}

@end