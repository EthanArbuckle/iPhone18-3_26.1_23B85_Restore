@interface MSDKPeerDemoGKData
- (MSDKPeerDemoGKData)init;
- (MSDKPeerDemoGKData)initWithCoder:(id)a3;
- (id)description;
- (void)addOffsetFromTolerance:(MSDKPeerDemoGKData *)self;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoGKData

- (MSDKPeerDemoGKData)init
{
  v5.receiver = self;
  v5.super_class = MSDKPeerDemoGKData;
  v2 = [(MSDKPeerDemoGKData *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDKPeerDemoGKData *)v2 setDataValid:0];
    [(MSDKPeerDemoGKData *)v3 setReliefBoxSpaceMM:0.0];
    [(MSDKPeerDemoGKData *)v3 setReliefTotalBoxSpaceMM:0.0];
    [(MSDKPeerDemoGKData *)v3 setOffsetFromToleranceX:0.0];
    [(MSDKPeerDemoGKData *)v3 setOffsetFromToleranceY:0.0];
    [(MSDKPeerDemoGKData *)v3 setOffsetFromToleranceZ:0.0];
  }

  return v3;
}

- (void)addOffsetFromTolerance:(MSDKPeerDemoGKData *)self
{
  v5 = v2;
  [(MSDKPeerDemoGKData *)self setOffsetFromToleranceX:?];
  HIDWORD(v4) = DWORD1(v5);
  LODWORD(v4) = DWORD1(v5);
  [(MSDKPeerDemoGKData *)self setOffsetFromToleranceY:v4];

  [(MSDKPeerDemoGKData *)self setOffsetFromToleranceZ:COERCE_DOUBLE(__PAIR64__(DWORD1(v5), DWORD2(v5)))];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoGKData *)self dataValid];
  [(MSDKPeerDemoGKData *)self reliefBoxSpaceMM];
  v8 = v7;
  [(MSDKPeerDemoGKData *)self reliefTotalBoxSpaceMM];
  v10 = v9;
  [(MSDKPeerDemoGKData *)self offsetFromToleranceX];
  v12 = v11;
  [(MSDKPeerDemoGKData *)self offsetFromToleranceY];
  v14 = v13;
  [(MSDKPeerDemoGKData *)self offsetFromToleranceZ];
  v16 = [v3 stringWithFormat:@"<%@[%p]: DataValid=%d reliefBoxSpaceMM=%f totalReliefBoxSpaceMM=%f offsetFromTolerance=(%f, %f, %f)>", v5, self, v6, *&v8, *&v10, *&v12, *&v14, v15];

  return v16;
}

- (MSDKPeerDemoGKData)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MSDKPeerDemoGKData;
  v5 = [(MSDKPeerDemoGKData *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataValid"];
    -[MSDKPeerDemoGKData setDataValid:](v5, "setDataValid:", [v6 BOOLValue]);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reliefBoxSpaceMM"];
    [v7 floatValue];
    [(MSDKPeerDemoGKData *)v5 setReliefBoxSpaceMM:?];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reliefTotalBoxSpaceMM"];
    [v8 floatValue];
    [(MSDKPeerDemoGKData *)v5 setReliefTotalBoxSpaceMM:?];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offsetFromToleranceX"];
    [v9 floatValue];
    [(MSDKPeerDemoGKData *)v5 setOffsetFromToleranceX:?];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offsetFromToleranceY"];
    [v10 floatValue];
    [(MSDKPeerDemoGKData *)v5 setOffsetFromToleranceY:?];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offsetFromToleranceZ"];
    [v11 floatValue];
    [(MSDKPeerDemoGKData *)v5 setOffsetFromToleranceZ:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[MSDKPeerDemoGKData dataValid](self, "dataValid")}];
  [v5 encodeObject:v6 forKey:@"dataValid"];

  v7 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoGKData *)self reliefBoxSpaceMM];
  v8 = [v7 numberWithFloat:?];
  [v5 encodeObject:v8 forKey:@"reliefBoxSpaceMM"];

  v9 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoGKData *)self reliefTotalBoxSpaceMM];
  v10 = [v9 numberWithFloat:?];
  [v5 encodeObject:v10 forKey:@"reliefTotalBoxSpaceMM"];

  v11 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoGKData *)self offsetFromToleranceX];
  v12 = [v11 numberWithFloat:?];
  [v5 encodeObject:v12 forKey:@"offsetFromToleranceX"];

  v13 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoGKData *)self offsetFromToleranceY];
  v14 = [v13 numberWithFloat:?];
  [v5 encodeObject:v14 forKey:@"offsetFromToleranceY"];

  v15 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoGKData *)self offsetFromToleranceZ];
  v16 = [v15 numberWithFloat:?];
  [v5 encodeObject:v16 forKey:@"offsetFromToleranceZ"];
}

@end