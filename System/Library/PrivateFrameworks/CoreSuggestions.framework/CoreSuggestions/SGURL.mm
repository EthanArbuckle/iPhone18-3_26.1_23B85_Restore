@interface SGURL
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToURL:(id)a3;
- (SGURL)initWithCoder:(id)a3;
- (SGURL)initWithURL:(id)a3 title:(id)a4 receivedFromHandle:(id)a5 bundleIdentifier:(id)a6 groupIdentifier:(id)a7 documentIdentifier:(id)a8 documentTitle:(id)a9 documentDate:(id)a10 documentTimeInterval:(double)a11 receivedAt:(id)a12 flags:(unsigned __int8)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)feedbackDescription;
- (id)nonFeedbackFlagDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGURL

- (BOOL)isEqualToURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = self->_url;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSURL *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v8 = self->_title;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v11 = self->_receivedFromHandle;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v14 = self->_bundleIdentifier;
  v15 = v14;
  if (v14 == v4[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = self->_groupIdentifier;
  v18 = v17;
  if (v17 == v4[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = self->_documentIdentifier;
  v21 = v20;
  if (v20 == v4[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v23 = self->_documentTitle;
  v24 = v23;
  if (v23 == v4[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v26 = self->_documentDate;
  v27 = v26;
  if (v26 == v4[9])
  {

LABEL_35:
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_documentTimeInterval];
    v32 = [MEMORY[0x1E696AD98] numberWithDouble:*(v4 + 10)];
    if ([v31 isEqualToNumber:v32])
    {
      v33 = self->_receivedAt;
      v34 = v33;
      if (v33 == v4[11])
      {
      }

      else
      {
        v35 = [(NSDate *)v33 isEqual:?];

        if ((v35 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v29 = self->_flags == *(v4 + 8);
      goto LABEL_41;
    }

LABEL_38:
    v29 = 0;
LABEL_41:

    goto LABEL_33;
  }

  v28 = [(NSDate *)v26 isEqual:?];

  if (v28)
  {
    goto LABEL_35;
  }

LABEL_32:
  v29 = 0;
LABEL_33:

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGURL *)self isEqualToURL:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = objc_alloc(objc_opt_class());
  v5 = [(NSURL *)self->_url copyWithZone:a3];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = [(NSString *)self->_receivedFromHandle copyWithZone:a3];
  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:a3];
  v9 = [(NSString *)self->_groupIdentifier copyWithZone:a3];
  v10 = [(NSString *)self->_documentIdentifier copyWithZone:a3];
  v11 = [(NSString *)self->_documentTitle copyWithZone:a3];
  v12 = [(NSDate *)self->_documentDate copyWithZone:a3];
  documentTimeInterval = self->_documentTimeInterval;
  v14 = [(NSDate *)self->_receivedAt copyWithZone:a3];
  LOBYTE(v17) = self->_flags;
  v15 = [v18 initWithURL:v5 title:v6 receivedFromHandle:v7 bundleIdentifier:v8 groupIdentifier:v9 documentIdentifier:v10 documentTitle:documentTimeInterval documentDate:v11 documentTimeInterval:v12 receivedAt:v14 flags:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_title forKey:@"ttl"];
  [v5 encodeObject:self->_receivedFromHandle forKey:@"rch"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [v5 encodeObject:self->_groupIdentifier forKey:@"gid"];
  [v5 encodeObject:self->_documentIdentifier forKey:@"did"];
  [v5 encodeObject:self->_documentTitle forKey:@"dtl"];
  [v5 encodeObject:self->_documentDate forKey:@"ddt"];
  [v5 encodeDouble:@"dti" forKey:self->_documentTimeInterval];
  [v5 encodeObject:self->_receivedAt forKey:@"rca"];
  [v5 encodeInt32:self->_flags forKey:@"flg"];
}

- (SGURL)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v11 = [v5 decodeInt32ForKey:@"flg"];
  if (v11 <= 0xFF)
  {
    v38 = v11;
    v41 = v10;
    v40 = v6;
    v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v14 = [v5 decodeObjectOfClasses:v13 forKey:@"url"];

    v39 = v14;
    if (!v14)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"SGURL.m" lineNumber:133 description:{@"nonnull %s %@ was null when decoded", "NSURL", @"url"}];
    }

    v37 = [v5 decodeObjectOfClasses:v8 forKey:@"ttl"];
    v36 = [v5 decodeObjectOfClasses:v8 forKey:@"rch"];
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"bid"];

    v17 = v16;
    if (!v16)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"SGURL.m" lineNumber:136 description:{@"nonnull %s %@ was null when decoded", "NSString", @"bid"}];
    }

    v35 = [v5 decodeObjectOfClasses:v8 forKey:@"gid"];
    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v19 = [v5 decodeObjectOfClasses:v18 forKey:@"did"];

    v34 = v19;
    if (!v19)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"SGURL.m" lineNumber:138 description:{@"nonnull %s %@ was null when decoded", "NSString", @"did"}];
    }

    v33 = a2;
    v20 = self;
    v21 = [v5 decodeObjectOfClasses:v8 forKey:@"dtl"];
    v22 = [v5 decodeObjectOfClasses:v41 forKey:@"ddt"];
    [v5 decodeDoubleForKey:@"dti"];
    v24 = v23;
    v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v26 = [v5 decodeObjectOfClasses:v25 forKey:@"rca"];

    if (!v26)
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:v33 object:v20 file:@"SGURL.m" lineNumber:142 description:{@"nonnull %s %@ was null when decoded", "NSDate", @"rca"}];
    }

    LOBYTE(v32) = v38;
    self = [(SGURL *)v20 initWithURL:v39 title:v37 receivedFromHandle:v36 bundleIdentifier:v17 groupIdentifier:v35 documentIdentifier:v34 documentTitle:v24 documentDate:v21 documentTimeInterval:v22 receivedAt:v26 flags:v32];

    v12 = self;
    v6 = v40;
    v10 = v41;
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

- (id)nonFeedbackFlagDescription
{
  v3 = objc_opt_new();
  v4 = v3;
  flags = self->_flags;
  if (flags)
  {
    [v3 addObject:@"outgoing"];
    flags = self->_flags;
    if ((flags & 0x10) == 0)
    {
LABEL_3:
      if ((flags & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((self->_flags & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"communication"];
  flags = self->_flags;
  if ((flags & 0x20) == 0)
  {
LABEL_4:
    if ((flags & 0x40) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    [v4 addObject:@"ending date"];
    if ((self->_flags & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [v4 addObject:@"time range"];
  flags = self->_flags;
  if ((flags & 0x40) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((flags & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_13:
  [v4 addObject:@"starting date"];
LABEL_6:
  v6 = [v4 _pas_componentsJoinedByString:{@", "}];

  return v6;
}

- (id)feedbackDescription
{
  v3 = objc_opt_new();
  v4 = v3;
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    [v3 addObject:@"engaged"];
    flags = self->_flags;
    if ((flags & 8) == 0)
    {
LABEL_3:
      if ((flags & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((self->_flags & 8) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"offered"];
  if ((self->_flags & 4) != 0)
  {
LABEL_4:
    [v4 addObject:@"rejected"];
  }

LABEL_5:
  v6 = [v4 _pas_componentsJoinedByString:{@", "}];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = *&self->_url;
  v10 = *&self->_receivedFromHandle;
  groupIdentifier = self->_groupIdentifier;
  documentIdentifier = self->_documentIdentifier;
  receivedAt = self->_receivedAt;
  [(NSDate *)receivedAt timeIntervalSince1970];
  v8 = [v3 initWithFormat:@"<SGURL u:%@ t:'%@' r:%@ b:%@ g:%@ d:%@ t:%@ (%f) f:%d>", v11, v10, groupIdentifier, documentIdentifier, receivedAt, v7, self->_flags];

  return v8;
}

- (SGURL)initWithURL:(id)a3 title:(id)a4 receivedFromHandle:(id)a5 bundleIdentifier:(id)a6 groupIdentifier:(id)a7 documentIdentifier:(id)a8 documentTitle:(id)a9 documentDate:(id)a10 documentTimeInterval:(double)a11 receivedAt:(id)a12 flags:(unsigned __int8)a13
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v21 = a12;
  v33.receiver = self;
  v33.super_class = SGURL;
  v22 = [(SGURL *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_url, a3);
    objc_storeStrong(&v23->_title, a4);
    objc_storeStrong(&v23->_receivedFromHandle, a5);
    objc_storeStrong(&v23->_bundleIdentifier, a6);
    objc_storeStrong(&v23->_groupIdentifier, a7);
    objc_storeStrong(&v23->_documentIdentifier, a8);
    objc_storeStrong(&v23->_documentTitle, a9);
    objc_storeStrong(&v23->_documentDate, a10);
    v23->_documentTimeInterval = a11;
    objc_storeStrong(&v23->_receivedAt, a12);
    v23->_flags = a13;
  }

  return v23;
}

@end