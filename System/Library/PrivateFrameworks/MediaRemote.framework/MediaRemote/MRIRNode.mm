@interface MRIRNode
+ (id)nodeFromIRNode:(id)a3;
+ (id)nodeFromOutputDevice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation MRIRNode

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRIRNode *)self avOutputDeviceIdentifier];
  [v6 appendFormat:@"avOutputDeviceIdentifier: %@", v7];

  v8 = [(MRIRNode *)self rapportIdentifier];
  [v6 appendFormat:@", rapportIdentifier: %@", v8];

  v9 = [(MRIRNode *)self idsIdentifier];
  [v6 appendFormat:@", idsIdentifier: %@", v9];

  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(MRIRNode *)self avOutputDeviceIdentifier];
  v3 = [v2 hash];

  return v3;
}

+ (id)nodeFromIRNode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MRIRNode);
  v5 = [v3 avOutpuDeviceIdentifier];
  [(MRIRNode *)v4 setAvOutputDeviceIdentifier:v5];

  v6 = [v3 rapportIdentifier];
  [(MRIRNode *)v4 setRapportIdentifier:v6];

  v7 = [v3 idsIdentifier];
  [(MRIRNode *)v4 setIdsIdentifier:v7];

  v8 = [v3 isLocal];
  [(MRIRNode *)v4 setIsLocal:v8];

  return v4;
}

+ (id)nodeFromOutputDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceType] == 4;
  v5 = [MRIRNode alloc];
  v6 = [v3 uid];

  v7 = [(MRIRNode *)v5 initWithAVOutputDeviceID:v6 isLocal:v4];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if ([(MRIRNode *)v4 conformsToProtocol:&unk_1F15B23E8])
  {
    v6 = v5;
    v7 = [(MRIRNode *)self avOutputDeviceIdentifier];
    v8 = [(MRIRNode *)v6 avOutputDeviceIdentifier];
    if (v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end