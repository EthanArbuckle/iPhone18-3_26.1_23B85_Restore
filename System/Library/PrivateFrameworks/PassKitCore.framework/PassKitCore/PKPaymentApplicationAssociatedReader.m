@interface PKPaymentApplicationAssociatedReader
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentApplicationAssociatedReader:(id)a3;
- (PKPaymentApplicationAssociatedReader)initWithCoder:(id)a3;
- (PKPaymentApplicationAssociatedReader)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentApplicationAssociatedReader

- (PKPaymentApplicationAssociatedReader)initWithDictionary:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 PKStringForKey:@"readerID"];
    v7 = [v6 pk_decodeHexadecimal];
    if (v7)
    {
      v24 = v6;
      v8 = [v5 PKArrayContaining:objc_opt_class() forKey:@"readerCAs"];
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v28;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v28 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v27 + 1) + 8 * i);
            v26 = 0;
            v16 = [[PKPaymentApplicationAssociatedReaderCA alloc] initWithDictionary:v15 success:&v26];
            v17 = v16;
            if (v26 != 1)
            {

              goto LABEL_19;
            }

            if (v16)
            {
              [v9 addObject:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      if ([v9 count])
      {
        v25.receiver = self;
        v25.super_class = PKPaymentApplicationAssociatedReader;
        v18 = [(PKPaymentApplicationAssociatedReader *)&v25 init];
        v19 = v18;
        if (v18)
        {
          objc_storeStrong(&v18->_readerIdentifier, v7);
          v20 = [v9 copy];
          readerCAs = v19->_readerCAs;
          v19->_readerCAs = v20;
        }

        self = v19;
        v22 = self;
      }

      else
      {
LABEL_19:
        v22 = 0;
      }

      v6 = v24;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)asDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSData *)self->_readerIdentifier hexEncoding];
  [v3 setObject:v4 forKeyedSubscript:@"readerID"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_readerCAs;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) asDictionary];
        [v5 addObject:v11];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [v3 setObject:v12 forKeyedSubscript:@"readerCAs"];

  v13 = [v3 copy];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  readerIdentifier = self->_readerIdentifier;
  v5 = a3;
  [v5 encodeObject:readerIdentifier forKey:@"readerID"];
  [v5 encodeObject:self->_readerCAs forKey:@"readerCAs"];
}

- (PKPaymentApplicationAssociatedReader)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentApplicationAssociatedReader;
  v5 = [(PKPaymentApplicationAssociatedReader *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerID"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"readerCAs"];
    readerCAs = v5->_readerCAs;
    v5->_readerCAs = v11;
  }

  return v5;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"readerIdentifier: '%@'; ", self->_readerIdentifier];
  [v6 appendString:@"readerCAs: ["];
  v7 = [(NSSet *)self->_readerCAs count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_readerCAs;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v11 + 1;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v18 + 1) + 8 * v13) description];
        [v6 appendString:v15];

        if (v14 < v7)
        {
          [v6 appendString:{@", "}];
        }

        ++v13;
        ++v14;
      }

      while (v10 != v13);
      v11 += v10;
      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v6 appendString:@"]; "];
  [v6 appendString:@">"];
  v16 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v16;
}

- (id)redactedDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"readerIdentifier: '<private>'; "];
  [v6 appendString:@"readerCAs: ["];
  v7 = [(NSSet *)self->_readerCAs count];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_readerCAs;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v11 + 1;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = [*(*(&v18 + 1) + 8 * v13) redactedDescription];
        [v6 appendString:v15];

        if (v14 < v7)
        {
          [v6 appendString:{@", "}];
        }

        ++v13;
        ++v14;
      }

      while (v10 != v13);
      v11 += v10;
      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v6 appendString:@"]; "];
  [v6 appendString:@">"];
  v16 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v16;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentApplicationAssociatedReader *)self isEqualToPaymentApplicationAssociatedReader:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentApplicationAssociatedReader:(id)a3
{
  v4 = a3;
  if (v4)
  {
    readerIdentifier = self->_readerIdentifier;
    v6 = v4[1];
    if (readerIdentifier)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (readerIdentifier == v6)
      {
LABEL_10:
        v8 = [(NSSet *)self->_readerCAs isEqualToSet:v4[2]];
        goto LABEL_11;
      }
    }

    else if (([(NSData *)readerIdentifier isEqual:?]& 1) != 0)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentApplicationAssociatedReader allocWithZone:](PKPaymentApplicationAssociatedReader init];
  v6 = [(NSData *)self->_readerIdentifier copyWithZone:a3];
  readerIdentifier = v5->_readerIdentifier;
  v5->_readerIdentifier = v6;

  v8 = [(NSSet *)self->_readerCAs copyWithZone:a3];
  readerCAs = v5->_readerCAs;
  v5->_readerCAs = v8;

  return v5;
}

@end