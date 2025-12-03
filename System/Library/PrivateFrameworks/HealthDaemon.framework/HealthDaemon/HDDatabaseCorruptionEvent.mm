@interface HDDatabaseCorruptionEvent
+ (id)createForProfile:(id)profile component:(int64_t)component error:(id)error failedObliterationReason:(id)reason;
- (HDDatabaseCorruptionEvent)initWithCoder:(id)coder;
- (HDDatabaseCorruptionEvent)initWithError:(id)error date:(id)date profileIdentifier:(id)identifier component:(int64_t)component build:(id)build failedObliterationReason:(id)reason;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDatabaseCorruptionEvent

- (HDDatabaseCorruptionEvent)initWithError:(id)error date:(id)date profileIdentifier:(id)identifier component:(int64_t)component build:(id)build failedObliterationReason:(id)reason
{
  errorCopy = error;
  dateCopy = date;
  identifierCopy = identifier;
  buildCopy = build;
  reasonCopy = reason;
  v27.receiver = self;
  v27.super_class = HDDatabaseCorruptionEvent;
  v19 = [(HDDatabaseCorruptionEvent *)&v27 init];
  if (v19)
  {
    v20 = [errorCopy copy];
    error = v19->_error;
    v19->_error = v20;

    v22 = [dateCopy copy];
    date = v19->_date;
    v19->_date = v22;

    v24 = [identifierCopy copy];
    profileIdentifier = v19->_profileIdentifier;
    v19->_profileIdentifier = v24;

    v19->_component = component;
    objc_storeStrong(&v19->_buildDescription, build);
    objc_storeStrong(&v19->_failedObliterationReason, reason);
  }

  return v19;
}

+ (id)createForProfile:(id)profile component:(int64_t)component error:(id)error failedObliterationReason:(id)reason
{
  reasonCopy = reason;
  errorCopy = error;
  profileCopy = profile;
  v13 = [self alloc];
  v14 = [MEMORY[0x277CBEAA8] now];
  profileIdentifier = [profileCopy profileIdentifier];
  daemon = [profileCopy daemon];

  behavior = [daemon behavior];
  currentOSBuild = [behavior currentOSBuild];
  v19 = [v13 initWithError:errorCopy date:v14 profileIdentifier:profileIdentifier component:component build:currentOSBuild failedObliterationReason:reasonCopy];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  profileIdentifier = [(HDDatabaseCorruptionEvent *)self profileIdentifier];
  [coderCopy encodeObject:profileIdentifier forKey:@"profile"];

  [coderCopy encodeInt:-[HDDatabaseCorruptionEvent component](self forKey:{"component"), @"component"}];
  buildDescription = [(HDDatabaseCorruptionEvent *)self buildDescription];
  [coderCopy encodeObject:buildDescription forKey:@"build"];

  date = [(HDDatabaseCorruptionEvent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  error = [(HDDatabaseCorruptionEvent *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  failedObliterationReason = self->_failedObliterationReason;
  if (failedObliterationReason)
  {
    [coderCopy encodeObject:failedObliterationReason forKey:@"obliteration_reason"];
  }
}

- (HDDatabaseCorruptionEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profile"];
  v6 = [coderCopy decodeIntForKey:@"component"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliteration_reason"];

  v11 = [(HDDatabaseCorruptionEvent *)self initWithError:v9 date:v8 profileIdentifier:v5 component:v6 build:v7 failedObliterationReason:v10];
  return v11;
}

@end