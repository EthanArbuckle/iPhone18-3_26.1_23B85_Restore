@interface BCSBusinessCallerItem
+ (id)itemFromStatement:(sqlite3_stmt *)a3;
- (BCSBusinessCallerItem)initWithCoder:(id)a3;
- (BCSBusinessCallerItem)initWithParquetMessage:(id)a3;
- (BCSBusinessCallerItem)initWithPhoneNumber:(id)a3 name:(id)a4 department:(id)a5 logoURL:(id)a6 logo:(id)a7 logoFormat:(id)a8 verified:(BOOL)a9;
- (BCSBusinessCallerItem)initWithPhoneNumber:(id)a3 phoneHash:(int64_t)a4 localizedNames:(id)a5 localizedDepartments:(id)a6 logoURL:(id)a7 logo:(id)a8 logoFormat:(id)a9 verified:(BOOL)a10;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSDictionary)localizedDepartments;
- (NSDictionary)localizedNames;
- (NSString)department;
- (NSString)name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)itemIdentifier;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)encodeWithCoder:(id)a3;
- (void)setPhoneNumber:(id)a3;
- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4;
@end

@implementation BCSBusinessCallerItem

- (BCSBusinessCallerItem)initWithParquetMessage:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  v5 = [v3 names];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = v3;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = [v3 intents];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = [v3 names];
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        if ([v17 isDefault])
        {
          v18 = [v17 text];

          v14 = v18;
        }

        v19 = [v17 text];
        v20 = [v17 locale];
        [v6 setObject:v19 forKeyedSubscript:v20];
      }

      v13 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = [v7 names];
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v22)
  {
    v23 = 0;
    v33 = self;
    goto LABEL_25;
  }

  v39 = v7;
  v23 = 0;
  v24 = *v42;
  do
  {
    for (j = 0; j != v22; j = (j + 1))
    {
      if (*v42 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v41 + 1) + 8 * j);
      if ([v26 isDefault])
      {
        v27 = [v26 text];

        v23 = v27;
      }

      v28 = [v26 text];
      v29 = [v26 locale];
      [v10 setObject:v28 forKeyedSubscript:v29];
    }

    v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
  }

  while (v22);

  if (!v14)
  {
    v7 = v39;
    goto LABEL_27;
  }

  v7 = v39;
  if (!v23)
  {
LABEL_27:
    v33 = self;
    goto LABEL_28;
  }

  v21 = [v39 phoneNumber];
  v38 = [v39 phoneHash];
  v37 = [v39 names];
  v30 = [v39 intents];
  v31 = [v39 logo];
  v32 = [v39 logoFormat];
  LOBYTE(v36) = [v39 isVerified];
  v22 = [(BCSBusinessCallerItem *)self initWithPhoneNumber:v21 phoneHash:v38 localizedNames:v37 localizedDepartments:v30 logoURL:0 logo:v31 logoFormat:v32 verified:v36];

  v33 = v22;
LABEL_25:

LABEL_28:
  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)itemFromStatement:(sqlite3_stmt *)a3
{
  sqlite3_column_int64(a3, 0);
  v4 = sqlite3_column_text(a3, 1);
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = sqlite3_column_blob(a3, 2);
  v7 = sqlite3_column_bytes(a3, 2);
  if (v6)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{sqlite3_column_double(a3, 3)}];
  if (v6)
  {
    v9 = [[BCSCallerIdParquetMessage alloc] initWithData:v6];
    if (v9)
    {
      v10 = [[BCSBusinessCallerItem alloc] initWithParquetMessage:v9];
      v11 = v10;
      if (v10)
      {
        [(BCSItem *)v10 setExpirationDate:v8];
        v12 = v11;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)updateStatementValues:(sqlite3_stmt *)a3 withItemIdentifier:(id)a4
{
  sqlite3_bind_int64(a3, 1, [a4 truncatedHash]);
  v6 = [(BCSBusinessCallerItem *)self message];
  v7 = [v6 phoneNumber];
  sqlite3_bind_text(a3, 2, [v7 UTF8String], -1, 0);

  v8 = [(BCSBusinessCallerItem *)self message];
  v12 = [v8 data];

  v9 = v12;
  sqlite3_bind_blob(a3, 3, [v12 bytes], objc_msgSend(v12, "length"), 0);
  v10 = [(BCSItem *)self expirationDate];
  [v10 timeIntervalSince1970];
  sqlite3_bind_double(a3, 4, v11);
}

- (BCSBusinessCallerItem)initWithPhoneNumber:(id)a3 name:(id)a4 department:(id)a5 logoURL:(id)a6 logo:(id)a7 logoFormat:(id)a8 verified:(BOOL)a9
{
  v32[1] = *MEMORY[0x277D85DE8];
  v29 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[BCSBusinessCallerItemIdentifier alloc] initWithPhoneNumber:v16];
  v18 = [MEMORY[0x277CBEAF8] currentLocale];
  v19 = [v18 languageCode];

  v20 = objc_alloc_init(BCSCallerIdLocalizedString);
  [(BCSCallerIdLocalizedString *)v20 setLocale:v19];
  [(BCSCallerIdLocalizedString *)v20 setText:v15];

  [(BCSCallerIdLocalizedString *)v20 setIsDefault:1];
  v21 = objc_alloc_init(BCSCallerIdLocalizedString);
  [(BCSCallerIdLocalizedString *)v21 setLocale:v19];
  [(BCSCallerIdLocalizedString *)v21 setText:v14];

  [(BCSCallerIdLocalizedString *)v21 setIsDefault:1];
  v22 = [(BCSBusinessCallerItemIdentifier *)v17 truncatedHash];
  v32[0] = v20;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v31 = v21;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  LOBYTE(v28) = a9;
  v25 = [(BCSBusinessCallerItem *)self initWithPhoneNumber:v16 phoneHash:v22 localizedNames:v23 localizedDepartments:v24 logoURL:v13 logo:v29 logoFormat:@"heic" verified:v28];

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BCSBusinessCallerItem)initWithPhoneNumber:(id)a3 phoneHash:(int64_t)a4 localizedNames:(id)a5 localizedDepartments:(id)a6 logoURL:(id)a7 logo:(id)a8 logoFormat:(id)a9 verified:(BOOL)a10
{
  v55 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v52.receiver = self;
  v52.super_class = BCSBusinessCallerItem;
  v22 = [(BCSItem *)&v52 init];
  if (v22)
  {
    v23 = objc_alloc_init(BCSCallerIdParquetMessage);
    message = v22->_message;
    v22->_message = v23;

    [(BCSCallerIdParquetMessage *)v22->_message setPhoneHash:a4];
    v43 = v16;
    [(BCSCallerIdParquetMessage *)v22->_message setPhoneNumber:v16];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v17;
    v25 = v17;
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(BCSCallerIdParquetMessage *)v22->_message addName:*(*(&v48 + 1) + 8 * i)];
        }

        v27 = [v25 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v27);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v18;
    v31 = [v30 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v45;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v45 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [(BCSCallerIdParquetMessage *)v22->_message addIntent:*(*(&v44 + 1) + 8 * j)];
        }

        v32 = [v30 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v32);
    }

    [(BCSCallerIdParquetMessage *)v22->_message setLogo:v20];
    [(BCSCallerIdParquetMessage *)v22->_message setIsVerified:a10];
    if (v19)
    {
      v35 = [v19 copy];
      logoURL = v22->_logoURL;
      v22->_logoURL = v35;
    }

    if (v21)
    {
      v37 = v21;
    }

    else
    {
      v37 = @"heic";
    }

    [(BCSCallerIdParquetMessage *)v22->_message setLogoFormat:v37];
    v38 = [[BCSBusinessCallerItemIdentifier alloc] initWithTruncatedHash:a4];
    identifier = v22->_identifier;
    v22->_identifier = v38;

    v17 = v42;
    v16 = v43;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)setPhoneNumber:(id)a3
{
  v4 = [a3 copy];
  [(BCSCallerIdParquetMessage *)self->_message setPhoneNumber:v4];
}

- (NSString)name
{
  v2 = [(BCSCallerIdParquetMessage *)self->_message names];
  v3 = [v2 defaultLocalizedStringsValue];

  return v3;
}

- (NSString)department
{
  v2 = [(BCSCallerIdParquetMessage *)self->_message intents];
  v3 = [v2 defaultLocalizedStringsValue];

  return v3;
}

- (NSDictionary)localizedNames
{
  v2 = [(BCSCallerIdParquetMessage *)self->_message names];
  v3 = [v2 localizedStringsToDictionary];

  return v3;
}

- (NSDictionary)localizedDepartments
{
  v2 = [(BCSCallerIdParquetMessage *)self->_message intents];
  v3 = [v2 localizedStringsToDictionary];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = BCSBusinessCallerItem;
  v4 = [(BCSBusinessCallerItem *)&v13 description];
  v5 = [(BCSBusinessCallerItem *)self phoneNumber];
  v6 = [(BCSBusinessCallerItem *)self name];
  v7 = [(BCSBusinessCallerItem *)self department];
  v8 = [(BCSBusinessCallerItem *)self logoURL];
  v9 = [v8 absoluteString];
  v10 = [(BCSBusinessCallerItem *)self identifier];
  v11 = [v3 stringWithFormat:@"%@ - phone:%@ name:%@ department:%@ logoURL:%@ (%@)", v4, v5, v6, v7, v9, v10];

  return v11;
}

- (id)itemIdentifier
{
  v2 = [(BCSBusinessCallerItem *)self identifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSBusinessCallerItem *)self identifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSBusinessCallerItem *)self identifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessCallerItem *)self identifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSBusinessCallerItem *)self message];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[4];
    v5[4] = v7;

    v9 = [(BCSBusinessCallerItem *)self logoURL];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[2];
    v5[2] = v10;

    v12 = [(BCSBusinessCallerItem *)self identifier];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[3];
    v5[3] = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BCSBusinessCallerItem *)self message];
  v6 = [v5 data];
  [v4 encodeObject:v6 forKey:@"Message"];

  v7 = [(BCSBusinessCallerItem *)self logoURL];
  [v4 encodeObject:v7 forKey:@"LogoURL"];
}

- (BCSBusinessCallerItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCSBusinessCallerItem;
  v5 = [(BCSItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Message"];
    v7 = [[BCSCallerIdParquetMessage alloc] initWithData:v6];
    if (!v7)
    {

      v11 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    v5 = [(BCSBusinessCallerItem *)v5 initWithParquetMessage:v7];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LogoURL"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v9;
  }

  v5 = v5;
  v11 = v5;
LABEL_6:

  return v11;
}

@end