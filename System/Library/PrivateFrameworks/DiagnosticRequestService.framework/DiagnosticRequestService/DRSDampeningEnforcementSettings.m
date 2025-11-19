@interface DRSDampeningEnforcementSettings
- (BOOL)isEqual:(id)a3;
- (DRSDampeningEnforcementSettings)init;
- (DRSDampeningEnforcementSettings)initWithMO:(id)a3;
- (id)_moRepresentation:(id)a3;
- (id)debugDescription;
- (id)jsonCompatibleDictRepresentation;
@end

@implementation DRSDampeningEnforcementSettings

- (DRSDampeningEnforcementSettings)init
{
  v3.receiver = self;
  v3.super_class = DRSDampeningEnforcementSettings;
  result = [(DRSDampeningEnforcementSettings *)&v3 init];
  if (result)
  {
    *&result->_enforcesSignatureHysteresis = 16843009;
    *&result->_enforcesResourceHysteresis = 16843009;
  }

  return result;
}

- (id)jsonCompatibleDictRepresentation
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"EnforceResourceHysteresis";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesResourceHysteresis](self, "enforcesResourceHysteresis")}];
  v14[0] = v3;
  v13[1] = @"EnforceResourceCap";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesResourceCap](self, "enforcesResourceCap")}];
  v14[1] = v4;
  v13[2] = @"EnforceResourceDownsampling";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesResourceDownsampling](self, "enforcesResourceDownsampling")}];
  v14[2] = v5;
  v13[3] = @"EnforceSignatureHysteresis";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesSignatureHysteresis](self, "enforcesSignatureHysteresis")}];
  v14[3] = v6;
  v13[4] = @"EnforceSignatureCap";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesSignatureCap](self, "enforcesSignatureCap")}];
  v14[4] = v7;
  v13[5] = @"EnforceSignatureDownsampling";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesSignatureDownsampling](self, "enforcesSignatureDownsampling")}];
  v14[5] = v8;
  v13[6] = @"EnforceTotalCap";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSDampeningEnforcementSettings enforcesTotalCap](self, "enforcesTotalCap")}];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(DRSDampeningEnforcementSettings *)self enforcesResourceHysteresis])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesResourceCap])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesResourceDownsampling])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesSignatureHysteresis])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesSignatureCap])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesSignatureDownsampling])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(DRSDampeningEnforcementSettings *)self enforcesTotalCap])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 initWithFormat:@"\t%@ -> %@\n\t%@ -> %@\n\t%@ -> %@\n\t%@ -> %@\n\t%@ -> %@\n\t%@ -> %@\n\t%@ -> %@\n", @"enforcesResourceHysteresis", v4, @"enforcesResourceCap", v5, @"enforcesResourceDownsampling", v6, @"enforcesSignatureHysteresis", v7, @"enforcesSignatureCap", v8, @"enforcesSignatureDownsampling", v9, @"enforcesTotalCap", v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DRSDampeningEnforcementSettings *)self enforcesResourceHysteresis];
      if (v6 == [(DRSDampeningEnforcementSettings *)v5 enforcesResourceHysteresis]&& (v7 = [(DRSDampeningEnforcementSettings *)self enforcesResourceCap], v7 == [(DRSDampeningEnforcementSettings *)v5 enforcesResourceCap]) && (v8 = [(DRSDampeningEnforcementSettings *)self enforcesResourceDownsampling], v8 == [(DRSDampeningEnforcementSettings *)v5 enforcesResourceDownsampling]) && (v9 = [(DRSDampeningEnforcementSettings *)self enforcesSignatureHysteresis], v9 == [(DRSDampeningEnforcementSettings *)v5 enforcesSignatureHysteresis]) && (v10 = [(DRSDampeningEnforcementSettings *)self enforcesSignatureCap], v10 == [(DRSDampeningEnforcementSettings *)v5 enforcesSignatureCap]) && (v11 = [(DRSDampeningEnforcementSettings *)self enforcesSignatureDownsampling], v11 == [(DRSDampeningEnforcementSettings *)v5 enforcesSignatureDownsampling]))
      {
        v14 = [(DRSDampeningEnforcementSettings *)self enforcesTotalCap];
        v12 = v14 ^ [(DRSDampeningEnforcementSettings *)v5 enforcesTotalCap]^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (DRSDampeningEnforcementSettings)initWithMO:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DRSDampeningEnforcementSettings;
  v5 = [(DRSDampeningEnforcementSettings *)&v7 init];
  if (v5)
  {
    v5->_enforcesResourceHysteresis = [v4 enforcesResourceHysteresis];
    v5->_enforcesResourceCap = [v4 enforcesResourceCap];
    v5->_enforcesResourceDownsampling = [v4 enforcesResourceDownsampling];
    v5->_enforcesSignatureHysteresis = [v4 enforcesSignatureHysteresis];
    v5->_enforcesSignatureCap = [v4 enforcesSignatureCap];
    v5->_enforcesSignatureDownsampling = [v4 enforcesSignatureDownsampling];
    v5->_enforcesTotalCap = [v4 enforcesTotalCap];
  }

  return v5;
}

- (id)_moRepresentation:(id)a3
{
  v4 = a3;
  v5 = [[DRSDampeningEnforcementSettingsMO alloc] initWithContext:v4];

  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesResourceHysteresis:[(DRSDampeningEnforcementSettings *)self enforcesResourceHysteresis]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesResourceCap:[(DRSDampeningEnforcementSettings *)self enforcesResourceCap]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesResourceDownsampling:[(DRSDampeningEnforcementSettings *)self enforcesResourceDownsampling]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesSignatureHysteresis:[(DRSDampeningEnforcementSettings *)self enforcesSignatureHysteresis]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesSignatureCap:[(DRSDampeningEnforcementSettings *)self enforcesSignatureCap]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesSignatureDownsampling:[(DRSDampeningEnforcementSettings *)self enforcesSignatureDownsampling]];
  [(DRSDampeningEnforcementSettingsMO *)v5 setEnforcesTotalCap:[(DRSDampeningEnforcementSettings *)self enforcesTotalCap]];

  return v5;
}

@end