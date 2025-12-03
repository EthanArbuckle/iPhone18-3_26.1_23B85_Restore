@interface LNSystemContext
- (LNSystemContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSystemContext

- (LNSystemContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preciseTimestamp"];
  v6 = objc_opt_new();
  [(LNSystemContext *)v6 setPreciseTimestamp:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staccatoInteractionType"];
  [(LNSystemContext *)v6 setStaccatoInteractionType:v7];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedCaptureAppContext"];
  [(LNSystemContext *)v6 setEncodedCaptureAppContext:v8];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assistantContext"];
  [(LNSystemContext *)v6 setAssistantContext:v9];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceIdiom"];

  [(LNSystemContext *)v6 setInterfaceIdiom:v10];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  preciseTimestamp = [(LNSystemContext *)self preciseTimestamp];
  [coderCopy encodeObject:preciseTimestamp forKey:@"preciseTimestamp"];

  staccatoInteractionType = [(LNSystemContext *)self staccatoInteractionType];
  [coderCopy encodeObject:staccatoInteractionType forKey:@"staccatoInteractionType"];

  encodedCaptureAppContext = [(LNSystemContext *)self encodedCaptureAppContext];
  [coderCopy encodeObject:encodedCaptureAppContext forKey:@"encodedCaptureAppContext"];

  assistantContext = [(LNSystemContext *)self assistantContext];
  [coderCopy encodeObject:assistantContext forKey:@"assistantContext"];

  interfaceIdiom = [(LNSystemContext *)self interfaceIdiom];
  [coderCopy encodeObject:interfaceIdiom forKey:@"interfaceIdiom"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = MEMORY[0x1E696AB78];
  preciseTimestamp = [(LNSystemContext *)self preciseTimestamp];
  v8 = [v6 localizedStringFromDate:preciseTimestamp dateStyle:1 timeStyle:4];
  staccatoInteractionType = [(LNSystemContext *)self staccatoInteractionType];
  assistantContext = [(LNSystemContext *)self assistantContext];
  interfaceIdiom = [(LNSystemContext *)self interfaceIdiom];
  v12 = [v3 stringWithFormat:@"<%@: %p, preciseTimestamp: %@, staccatoInteractionType: %@, assistantContext: %@, idiom %@>", v5, self, v8, staccatoInteractionType, assistantContext, interfaceIdiom];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  preciseTimestamp = [(LNSystemContext *)self preciseTimestamp];
  [v5 setPreciseTimestamp:preciseTimestamp];

  staccatoInteractionType = [(LNSystemContext *)self staccatoInteractionType];
  [v5 setStaccatoInteractionType:staccatoInteractionType];

  encodedCaptureAppContext = [(LNSystemContext *)self encodedCaptureAppContext];
  v9 = [encodedCaptureAppContext copyWithZone:zone];
  [v5 setEncodedCaptureAppContext:v9];

  assistantContext = [(LNSystemContext *)self assistantContext];
  v11 = [assistantContext copyWithZone:zone];
  [v5 setAssistantContext:v11];

  interfaceIdiom = [(LNSystemContext *)self interfaceIdiom];
  [v5 setInterfaceIdiom:interfaceIdiom];

  return v5;
}

@end