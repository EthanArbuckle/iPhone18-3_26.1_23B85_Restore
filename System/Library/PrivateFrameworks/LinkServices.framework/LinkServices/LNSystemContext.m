@interface LNSystemContext
- (LNSystemContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSystemContext

- (LNSystemContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preciseTimestamp"];
  v6 = objc_opt_new();
  [(LNSystemContext *)v6 setPreciseTimestamp:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"staccatoInteractionType"];
  [(LNSystemContext *)v6 setStaccatoInteractionType:v7];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedCaptureAppContext"];
  [(LNSystemContext *)v6 setEncodedCaptureAppContext:v8];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assistantContext"];
  [(LNSystemContext *)v6 setAssistantContext:v9];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interfaceIdiom"];

  [(LNSystemContext *)v6 setInterfaceIdiom:v10];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSystemContext *)self preciseTimestamp];
  [v4 encodeObject:v5 forKey:@"preciseTimestamp"];

  v6 = [(LNSystemContext *)self staccatoInteractionType];
  [v4 encodeObject:v6 forKey:@"staccatoInteractionType"];

  v7 = [(LNSystemContext *)self encodedCaptureAppContext];
  [v4 encodeObject:v7 forKey:@"encodedCaptureAppContext"];

  v8 = [(LNSystemContext *)self assistantContext];
  [v4 encodeObject:v8 forKey:@"assistantContext"];

  v9 = [(LNSystemContext *)self interfaceIdiom];
  [v4 encodeObject:v9 forKey:@"interfaceIdiom"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x1E696AB78];
  v7 = [(LNSystemContext *)self preciseTimestamp];
  v8 = [v6 localizedStringFromDate:v7 dateStyle:1 timeStyle:4];
  v9 = [(LNSystemContext *)self staccatoInteractionType];
  v10 = [(LNSystemContext *)self assistantContext];
  v11 = [(LNSystemContext *)self interfaceIdiom];
  v12 = [v3 stringWithFormat:@"<%@: %p, preciseTimestamp: %@, staccatoInteractionType: %@, assistantContext: %@, idiom %@>", v5, self, v8, v9, v10, v11];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(LNSystemContext *)self preciseTimestamp];
  [v5 setPreciseTimestamp:v6];

  v7 = [(LNSystemContext *)self staccatoInteractionType];
  [v5 setStaccatoInteractionType:v7];

  v8 = [(LNSystemContext *)self encodedCaptureAppContext];
  v9 = [v8 copyWithZone:a3];
  [v5 setEncodedCaptureAppContext:v9];

  v10 = [(LNSystemContext *)self assistantContext];
  v11 = [v10 copyWithZone:a3];
  [v5 setAssistantContext:v11];

  v12 = [(LNSystemContext *)self interfaceIdiom];
  [v5 setInterfaceIdiom:v12];

  return v5;
}

@end