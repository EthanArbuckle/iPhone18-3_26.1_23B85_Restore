@interface HDDatabaseCorruptionEvent
+ (id)createForProfile:(id)a3 component:(int64_t)a4 error:(id)a5 failedObliterationReason:(id)a6;
- (HDDatabaseCorruptionEvent)initWithCoder:(id)a3;
- (HDDatabaseCorruptionEvent)initWithError:(id)a3 date:(id)a4 profileIdentifier:(id)a5 component:(int64_t)a6 build:(id)a7 failedObliterationReason:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDDatabaseCorruptionEvent

- (HDDatabaseCorruptionEvent)initWithError:(id)a3 date:(id)a4 profileIdentifier:(id)a5 component:(int64_t)a6 build:(id)a7 failedObliterationReason:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v27.receiver = self;
  v27.super_class = HDDatabaseCorruptionEvent;
  v19 = [(HDDatabaseCorruptionEvent *)&v27 init];
  if (v19)
  {
    v20 = [v14 copy];
    error = v19->_error;
    v19->_error = v20;

    v22 = [v15 copy];
    date = v19->_date;
    v19->_date = v22;

    v24 = [v16 copy];
    profileIdentifier = v19->_profileIdentifier;
    v19->_profileIdentifier = v24;

    v19->_component = a6;
    objc_storeStrong(&v19->_buildDescription, a7);
    objc_storeStrong(&v19->_failedObliterationReason, a8);
  }

  return v19;
}

+ (id)createForProfile:(id)a3 component:(int64_t)a4 error:(id)a5 failedObliterationReason:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a1 alloc];
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = [v12 profileIdentifier];
  v16 = [v12 daemon];

  v17 = [v16 behavior];
  v18 = [v17 currentOSBuild];
  v19 = [v13 initWithError:v11 date:v14 profileIdentifier:v15 component:a4 build:v18 failedObliterationReason:v10];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(HDDatabaseCorruptionEvent *)self profileIdentifier];
  [v9 encodeObject:v4 forKey:@"profile"];

  [v9 encodeInt:-[HDDatabaseCorruptionEvent component](self forKey:{"component"), @"component"}];
  v5 = [(HDDatabaseCorruptionEvent *)self buildDescription];
  [v9 encodeObject:v5 forKey:@"build"];

  v6 = [(HDDatabaseCorruptionEvent *)self date];
  [v9 encodeObject:v6 forKey:@"date"];

  v7 = [(HDDatabaseCorruptionEvent *)self error];
  [v9 encodeObject:v7 forKey:@"error"];

  failedObliterationReason = self->_failedObliterationReason;
  if (failedObliterationReason)
  {
    [v9 encodeObject:failedObliterationReason forKey:@"obliteration_reason"];
  }
}

- (HDDatabaseCorruptionEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profile"];
  v6 = [v4 decodeIntForKey:@"component"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliteration_reason"];

  v11 = [(HDDatabaseCorruptionEvent *)self initWithError:v9 date:v8 profileIdentifier:v5 component:v6 build:v7 failedObliterationReason:v10];
  return v11;
}

@end