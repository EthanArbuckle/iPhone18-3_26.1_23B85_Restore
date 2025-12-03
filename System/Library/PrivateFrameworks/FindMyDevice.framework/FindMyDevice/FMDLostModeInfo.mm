@interface FMDLostModeInfo
- (FMDLostModeInfo)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDLostModeInfo

- (void)dealloc
{
  [(FMDLostModeInfo *)self setMessage:0];
  [(FMDLostModeInfo *)self setPhoneNumber:0];
  v3.receiver = self;
  v3.super_class = FMDLostModeInfo;
  [(FMDLostModeInfo *)&v3 dealloc];
}

- (FMDLostModeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = FMDLostModeInfo;
  v5 = [(FMDLostModeInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeEnabled"];
    -[FMDLostModeInfo setLostModeEnabled:](v5, "setLostModeEnabled:", [v6 BOOLValue]);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disableSlideToUnlock"];
    -[FMDLostModeInfo setDisableSlideToUnlock:](v5, "setDisableSlideToUnlock:", [v7 BOOLValue]);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(FMDLostModeInfo *)v5 setMessage:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(FMDLostModeInfo *)v5 setPhoneNumber:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"facetimeCapable"];
    -[FMDLostModeInfo setFacetimeCapable:](v5, "setFacetimeCapable:", [v10 BOOLValue]);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"footnoteText"];
    [(FMDLostModeInfo *)v5 setFootnoteText:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeType"];
    -[FMDLostModeInfo setLostModeType:](v5, "setLostModeType:", [v12 unsignedIntegerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[FMDLostModeInfo lostModeEnabled](self, "lostModeEnabled")}];
  [coderCopy encodeObject:v6 forKey:@"lostModeEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLostModeInfo disableSlideToUnlock](self, "disableSlideToUnlock")}];
  [coderCopy encodeObject:v7 forKey:@"disableSlideToUnlock"];

  message = [(FMDLostModeInfo *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  phoneNumber = [(FMDLostModeInfo *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLostModeInfo facetimeCapable](self, "facetimeCapable")}];
  [coderCopy encodeObject:v10 forKey:@"facetimeCapable"];

  footnoteText = [(FMDLostModeInfo *)self footnoteText];
  [coderCopy encodeObject:footnoteText forKey:@"footnoteText"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FMDLostModeInfo lostModeType](self, "lostModeType")}];
  [coderCopy encodeObject:v12 forKey:@"lostModeType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  message = [(FMDLostModeInfo *)self message];
  phoneNumber = [(FMDLostModeInfo *)self phoneNumber];
  facetimeCapable = [(FMDLostModeInfo *)self facetimeCapable];
  footnoteText = [(FMDLostModeInfo *)self footnoteText];
  v8 = [v3 stringWithFormat:@"FMDLostModeInfo(0x%lx) message - %@, phoneNum - %@, facetimeCapable - %d, footnote - %@, inLostMode - %d, disableUnlock - %d, type - %ld", self, message, phoneNumber, facetimeCapable, footnoteText, -[FMDLostModeInfo lostModeEnabled](self, "lostModeEnabled"), -[FMDLostModeInfo disableSlideToUnlock](self, "disableSlideToUnlock"), -[FMDLostModeInfo lostModeType](self, "lostModeType")];

  return v8;
}

@end