@interface IXRefreshContainerOptions
- (BOOL)isEqual:(id)a3;
- (IXRefreshContainerOptions)initWithCoder:(id)a3;
- (IXRefreshContainerOptions)initWithReason:(id)a3 containerTypes:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IXRefreshContainerOptions

- (IXRefreshContainerOptions)initWithReason:(id)a3 containerTypes:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IXRefreshContainerOptions;
  v8 = [(IXRefreshContainerOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, a3);
    v9->_containerTypes = a4;
    *&v9->_allowRefreshDuringPostProcessing = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [(IXRefreshContainerOptions *)self reason];
  v8 = [(IXRefreshContainerOptions *)v6 reason];
  if ([v7 isEqualToString:v8] && (v9 = -[IXRefreshContainerOptions containerTypes](self, "containerTypes"), v9 == -[IXRefreshContainerOptions containerTypes](v6, "containerTypes")) && (v10 = -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing"), v10 == -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](v6, "allowRefreshDuringPostProcessing")))
  {
    v13 = [(IXRefreshContainerOptions *)self forceTerminateApp];
    v14 = [(IXRefreshContainerOptions *)v6 forceTerminateApp];

    if (v13 == v14)
    {
      v11 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_9:

LABEL_12:
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(IXRefreshContainerOptions *)self reason];
  v6 = [v4 initWithReason:v5 containerTypes:{-[IXRefreshContainerOptions containerTypes](self, "containerTypes")}];

  [v6 setAllowRefreshDuringPostProcessing:{-[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing")}];
  [v6 setForceTerminateApp:{-[IXRefreshContainerOptions forceTerminateApp](self, "forceTerminateApp")}];
  return v6;
}

- (unint64_t)hash
{
  v3 = [(IXRefreshContainerOptions *)self reason];
  v4 = [v3 hash];
  v5 = [(IXRefreshContainerOptions *)self containerTypes]^ v4;
  v6 = v5 ^ [(IXRefreshContainerOptions *)self allowRefreshDuringPostProcessing];
  v7 = [(IXRefreshContainerOptions *)self forceTerminateApp];

  return v6 ^ v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(IXRefreshContainerOptions *)self reason];
  [v6 encodeObject:v4 forKey:@"reason"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXRefreshContainerOptions containerTypes](self, "containerTypes")}];
  [v6 encodeObject:v5 forKey:@"containerTypes"];

  [v6 encodeBool:-[IXRefreshContainerOptions forceTerminateApp](self forKey:{"forceTerminateApp"), @"forceTerminateApp"}];
  [v6 encodeBool:-[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self forKey:{"allowRefreshDuringPostProcessing"), @"allowRefreshDuringPostProcessing"}];
}

- (IXRefreshContainerOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IXRefreshContainerOptions;
  v5 = [(IXRefreshContainerOptions *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerTypes"];
    v5->_containerTypes = [v8 unsignedIntegerValue];

    v5->_forceTerminateApp = [v4 decodeBoolForKey:@"forceTerminateApp"];
    v5->_allowRefreshDuringPostProcessing = [v4 decodeBoolForKey:@"allowRefreshDuringPostProcessing"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IXRefreshContainerOptions *)self reason];
  v7 = [v3 stringWithFormat:@"<%@<%p> : %@ containerTypes=%lx allowRefreshDuringPostProcessing=%d forceTerminateApp=%d>", v5, self, v6, -[IXRefreshContainerOptions containerTypes](self, "containerTypes"), -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing"), -[IXRefreshContainerOptions forceTerminateApp](self, "forceTerminateApp")];

  return v7;
}

@end