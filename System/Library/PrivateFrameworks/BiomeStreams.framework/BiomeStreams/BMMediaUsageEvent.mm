@interface BMMediaUsageEvent
- (BOOL)isValidWithContext:(id)a3 error:(id *)a4;
- (NSString)description;
@end

@implementation BMMediaUsageEvent

- (BOOL)isValidWithContext:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = BMMediaUsageEvent;
  return [(BMEventBase *)&v5 isValidWithContext:a3 error:a4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BMMediaUsageEvent *)self dateInterval];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isStarting](self, "isStarting")}];
  v7 = [(BMMediaUsageEvent *)self bundleID];
  v8 = [(BMMediaUsageEvent *)self URL];
  v9 = [(BMMediaUsageEvent *)self mediaURL];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isUsageTrusted](self, "isUsageTrusted")}];
  v11 = [v3 stringWithFormat:@"<%@ %p> interval: %@, launch: %@, bundleID: %@, URL: %@, mediaURL: %@ isUsageTrusted: %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end