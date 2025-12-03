@interface IXRefreshContainerOptions
- (BOOL)isEqual:(id)equal;
- (IXRefreshContainerOptions)initWithCoder:(id)coder;
- (IXRefreshContainerOptions)initWithReason:(id)reason containerTypes:(unint64_t)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IXRefreshContainerOptions

- (IXRefreshContainerOptions)initWithReason:(id)reason containerTypes:(unint64_t)types
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = IXRefreshContainerOptions;
  v8 = [(IXRefreshContainerOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, reason);
    v9->_containerTypes = types;
    *&v9->_allowRefreshDuringPostProcessing = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  reason = [(IXRefreshContainerOptions *)self reason];
  reason2 = [(IXRefreshContainerOptions *)v6 reason];
  if ([reason isEqualToString:reason2] && (v9 = -[IXRefreshContainerOptions containerTypes](self, "containerTypes"), v9 == -[IXRefreshContainerOptions containerTypes](v6, "containerTypes")) && (v10 = -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing"), v10 == -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](v6, "allowRefreshDuringPostProcessing")))
  {
    forceTerminateApp = [(IXRefreshContainerOptions *)self forceTerminateApp];
    forceTerminateApp2 = [(IXRefreshContainerOptions *)v6 forceTerminateApp];

    if (forceTerminateApp == forceTerminateApp2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  reason = [(IXRefreshContainerOptions *)self reason];
  v6 = [v4 initWithReason:reason containerTypes:{-[IXRefreshContainerOptions containerTypes](self, "containerTypes")}];

  [v6 setAllowRefreshDuringPostProcessing:{-[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing")}];
  [v6 setForceTerminateApp:{-[IXRefreshContainerOptions forceTerminateApp](self, "forceTerminateApp")}];
  return v6;
}

- (unint64_t)hash
{
  reason = [(IXRefreshContainerOptions *)self reason];
  v4 = [reason hash];
  v5 = [(IXRefreshContainerOptions *)self containerTypes]^ v4;
  v6 = v5 ^ [(IXRefreshContainerOptions *)self allowRefreshDuringPostProcessing];
  forceTerminateApp = [(IXRefreshContainerOptions *)self forceTerminateApp];

  return v6 ^ forceTerminateApp;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  reason = [(IXRefreshContainerOptions *)self reason];
  [coderCopy encodeObject:reason forKey:@"reason"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXRefreshContainerOptions containerTypes](self, "containerTypes")}];
  [coderCopy encodeObject:v5 forKey:@"containerTypes"];

  [coderCopy encodeBool:-[IXRefreshContainerOptions forceTerminateApp](self forKey:{"forceTerminateApp"), @"forceTerminateApp"}];
  [coderCopy encodeBool:-[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self forKey:{"allowRefreshDuringPostProcessing"), @"allowRefreshDuringPostProcessing"}];
}

- (IXRefreshContainerOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IXRefreshContainerOptions;
  v5 = [(IXRefreshContainerOptions *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerTypes"];
    v5->_containerTypes = [v8 unsignedIntegerValue];

    v5->_forceTerminateApp = [coderCopy decodeBoolForKey:@"forceTerminateApp"];
    v5->_allowRefreshDuringPostProcessing = [coderCopy decodeBoolForKey:@"allowRefreshDuringPostProcessing"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  reason = [(IXRefreshContainerOptions *)self reason];
  v7 = [v3 stringWithFormat:@"<%@<%p> : %@ containerTypes=%lx allowRefreshDuringPostProcessing=%d forceTerminateApp=%d>", v5, self, reason, -[IXRefreshContainerOptions containerTypes](self, "containerTypes"), -[IXRefreshContainerOptions allowRefreshDuringPostProcessing](self, "allowRefreshDuringPostProcessing"), -[IXRefreshContainerOptions forceTerminateApp](self, "forceTerminateApp")];

  return v7;
}

@end