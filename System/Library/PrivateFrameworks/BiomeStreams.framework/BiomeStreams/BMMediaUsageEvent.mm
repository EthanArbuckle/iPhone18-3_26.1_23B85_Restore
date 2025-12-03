@interface BMMediaUsageEvent
- (BOOL)isValidWithContext:(id)context error:(id *)error;
- (NSString)description;
@end

@implementation BMMediaUsageEvent

- (BOOL)isValidWithContext:(id)context error:(id *)error
{
  v5.receiver = self;
  v5.super_class = BMMediaUsageEvent;
  return [(BMEventBase *)&v5 isValidWithContext:context error:error];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  dateInterval = [(BMMediaUsageEvent *)self dateInterval];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isStarting](self, "isStarting")}];
  bundleID = [(BMMediaUsageEvent *)self bundleID];
  v8 = [(BMMediaUsageEvent *)self URL];
  mediaURL = [(BMMediaUsageEvent *)self mediaURL];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaUsageEvent isUsageTrusted](self, "isUsageTrusted")}];
  v11 = [v3 stringWithFormat:@"<%@ %p> interval: %@, launch: %@, bundleID: %@, URL: %@, mediaURL: %@ isUsageTrusted: %@", v4, self, dateInterval, v6, bundleID, v8, mediaURL, v10];

  return v11;
}

@end