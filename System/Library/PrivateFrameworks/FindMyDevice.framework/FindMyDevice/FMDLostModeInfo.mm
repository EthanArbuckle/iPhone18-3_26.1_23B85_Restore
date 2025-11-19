@interface FMDLostModeInfo
- (FMDLostModeInfo)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (FMDLostModeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = FMDLostModeInfo;
  v5 = [(FMDLostModeInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeEnabled"];
    -[FMDLostModeInfo setLostModeEnabled:](v5, "setLostModeEnabled:", [v6 BOOLValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disableSlideToUnlock"];
    -[FMDLostModeInfo setDisableSlideToUnlock:](v5, "setDisableSlideToUnlock:", [v7 BOOLValue]);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(FMDLostModeInfo *)v5 setMessage:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(FMDLostModeInfo *)v5 setPhoneNumber:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"facetimeCapable"];
    -[FMDLostModeInfo setFacetimeCapable:](v5, "setFacetimeCapable:", [v10 BOOLValue]);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"footnoteText"];
    [(FMDLostModeInfo *)v5 setFootnoteText:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeType"];
    -[FMDLostModeInfo setLostModeType:](v5, "setLostModeType:", [v12 unsignedIntegerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[FMDLostModeInfo lostModeEnabled](self, "lostModeEnabled")}];
  [v5 encodeObject:v6 forKey:@"lostModeEnabled"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLostModeInfo disableSlideToUnlock](self, "disableSlideToUnlock")}];
  [v5 encodeObject:v7 forKey:@"disableSlideToUnlock"];

  v8 = [(FMDLostModeInfo *)self message];
  [v5 encodeObject:v8 forKey:@"message"];

  v9 = [(FMDLostModeInfo *)self phoneNumber];
  [v5 encodeObject:v9 forKey:@"phoneNumber"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FMDLostModeInfo facetimeCapable](self, "facetimeCapable")}];
  [v5 encodeObject:v10 forKey:@"facetimeCapable"];

  v11 = [(FMDLostModeInfo *)self footnoteText];
  [v5 encodeObject:v11 forKey:@"footnoteText"];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FMDLostModeInfo lostModeType](self, "lostModeType")}];
  [v5 encodeObject:v12 forKey:@"lostModeType"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FMDLostModeInfo *)self message];
  v5 = [(FMDLostModeInfo *)self phoneNumber];
  v6 = [(FMDLostModeInfo *)self facetimeCapable];
  v7 = [(FMDLostModeInfo *)self footnoteText];
  v8 = [v3 stringWithFormat:@"FMDLostModeInfo(0x%lx) message - %@, phoneNum - %@, facetimeCapable - %d, footnote - %@, inLostMode - %d, disableUnlock - %d, type - %ld", self, v4, v5, v6, v7, -[FMDLostModeInfo lostModeEnabled](self, "lostModeEnabled"), -[FMDLostModeInfo disableSlideToUnlock](self, "disableSlideToUnlock"), -[FMDLostModeInfo lostModeType](self, "lostModeType")];

  return v8;
}

@end