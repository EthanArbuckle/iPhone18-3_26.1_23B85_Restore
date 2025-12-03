@interface IDSEntitlements
- (BOOL)hasEntitlement:(id)entitlement;
- (BOOL)hasService:(id)service forAnyOfEntitlements:(id)entitlements;
- (BOOL)hasService:(id)service forEntitlement:(id)entitlement;
- (IDSEntitlements)initWithEntitlements:(id)entitlements;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (void)dealloc;
@end

@implementation IDSEntitlements

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  context = objc_autoreleasePoolPush();
  if (self->_specificEntitlementCount)
  {
    for (i = 0; i < self->_specificEntitlementCount; ++i)
    {
      v5 = &self->_specificEntitlements[i];
      var0 = v5->var0;
      v7 = v5->var1.var0;
      v8 = v5->var2 - 1;
      if (v8 > 0x22)
      {
        v9 = 0;
      }

      else
      {
        v9 = **(&off_100BDE960 + v8);
      }

      if (var0 == 57005)
      {
        [v3 setObject:&off_100C3C868 forKeyedSubscript:v9];
      }

      else
      {
        if (var0 == 57007)
        {
          v10 = [NSString stringWithCString:self->_shrunkenServiceIdentifiers[v7] encoding:4];
          v11 = sub_100006AB8(v10);
          [v3 setObject:v11 forKeyedSubscript:v9];
        }

        else
        {
          if (var0 != 57069)
          {
            v12 = objc_alloc_init(NSMutableArray);
            if (var0)
            {
              do
              {
                v14 = *v7++;
                v13 = v14;
                if (v14 <= self->_serviceIdentifierCount)
                {
                  v15 = [NSString stringWithCString:self->_shrunkenServiceIdentifiers[v13 - 1] encoding:4];
                  v16 = sub_100006AB8(v15);
                  [v12 addObject:v16];
                }

                --var0;
              }

              while (var0);
            }

            v17 = [v12 copy];
            [v3 setObject:v17 forKeyedSubscript:v9];

            goto LABEL_18;
          }

          v10 = [NSNumber numberWithUnsignedShort:v7];
          [v3 setObject:v10 forKeyedSubscript:v9];
        }
      }

LABEL_18:
    }
  }

  objc_autoreleasePoolPop(context);
  v18 = [v3 copy];

  return v18;
}

- (void)dealloc
{
  specificEntitlementCount = self->_specificEntitlementCount;
  if (self->_specificEntitlementCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      specificEntitlements = self->_specificEntitlements;
      var0 = specificEntitlements[v4].var0;
      if (var0 != 57005 && var0 != 57007 && var0 != 57069)
      {
        free(specificEntitlements[v4].var1.var0);
        specificEntitlementCount = self->_specificEntitlementCount;
      }

      ++v5;
      ++v4;
    }

    while (v5 < specificEntitlementCount);
  }

  free(self->_specificEntitlements);
  if (self->_serviceIdentifierCount)
  {
    v10 = 0;
    do
    {
      free(self->_shrunkenServiceIdentifiers[v10++]);
    }

    while (v10 < self->_serviceIdentifierCount);
  }

  free(self->_shrunkenServiceIdentifiers);
  v11.receiver = self;
  v11.super_class = IDSEntitlements;
  [(IDSEntitlements *)&v11 dealloc];
}

- (IDSEntitlements)initWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v61.receiver = self;
  v61.super_class = IDSEntitlements;
  v5 = [(IDSEntitlements *)&v61 init];
  if (v5)
  {
    v43 = objc_autoreleasePoolPush();
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [entitlementsCopy count];
    v5->_specificEntitlementCount = v7;
    v5->_specificEntitlements = malloc_type_calloc(v7, 0x18uLL, 0x1012040FC628917uLL);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v44 = entitlementsCopy;
    v8 = entitlementsCopy;
    v9 = [v8 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = 0;
      v12 = *v58;
      v49 = *v58;
      v45 = v8;
      v46 = v5;
      do
      {
        v13 = 0;
        v11 = v11;
        v50 = v10;
        do
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v52 = v13;
          v14 = *(*(&v57 + 1) + 8 * v13);
          specificEntitlements = v5->_specificEntitlements;
          context = objc_autoreleasePoolPush();
          v16 = sub_100003BE4(v14);
          if (v16 >= 1)
          {
            v17 = v16;
            v18 = &specificEntitlements[v11];
            v19 = [v8 objectForKeyedSubscript:{v14, v43}];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = sub_100003A80(v19);
              v21 = [v6 indexOfObject:v20];
              if (v21 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v21 = [v6 count];
                [v6 addObject:v20];
              }

              if (v21 >= 0x10000)
              {
                v23 = +[IMRGLog warning];
                if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v64 = v19;
                  v65 = 2048;
                  v66 = v21;
                  _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Too many services in entitlements! {value: %@, index: %llx}", buf, 0x16u);
                }
              }

              else
              {
                v18->var2 = v17;
                v18->var0 = -8529;
                v18->var1.var1 = v21;
              }

              v12 = v49;
              v10 = v50;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18->var2 = v17;
                if (qword_100CBD620 != -1)
                {
                  sub_100923B40();
                }

                if (byte_100CBD618 == v17 || _os_feature_enabled_impl() && (byte_100CBD619 == v17 || byte_100CBD61A == v17))
                {
                  v22 = -8531;
                }

                else
                {
                  v22 = -8467;
                }

                v18->var0 = v22;
                v18->var1.var1 = [v19 unsignedShortValue];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v48 = v11;
                  v18->var2 = v17;
                  v24 = [v19 count];
                  if ((v24 & 0xFFBF) == 0xDEAD || v24 == 57007)
                  {
                    v26 = v24 + 1;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  v18->var0 = v26;
                  v18->var1.var0 = malloc_type_calloc(v26, 2uLL, 0x1000040BDFB0063uLL);
                  v53 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v47 = v19;
                  v27 = v19;
                  v28 = [v27 countByEnumeratingWithState:&v53 objects:v62 count:16];
                  if (v28)
                  {
                    v29 = v28;
                    LODWORD(v30) = 0;
                    v31 = *v54;
                    do
                    {
                      v32 = 0;
                      v30 = v30;
                      do
                      {
                        if (*v54 != v31)
                        {
                          objc_enumerationMutation(v27);
                        }

                        v33 = *(*(&v53 + 1) + 8 * v32);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v34 = sub_100003A80(v33);
                          v35 = [v6 indexOfObject:v34];
                          v36 = v35;
                          if (v35 == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v36 = [v6 count];
                            [v6 addObject:v34];
                          }

                          v18->var1.var0[v30] = v36 + 1;
                        }

                        ++v30;
                        v32 = v32 + 1;
                      }

                      while (v29 != v32);
                      v29 = [v27 countByEnumeratingWithState:&v53 objects:v62 count:16];
                    }

                    while (v29);
                  }

                  v8 = v45;
                  v5 = v46;
                  v11 = v48;
                  v12 = v49;
                  v10 = v50;
                  v19 = v47;
                }
              }
            }
          }

          ++v11;
          objc_autoreleasePoolPop(context);
          v13 = v52 + 1;
        }

        while ((v52 + 1) != v10);
        v10 = [v8 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v10);
    }

    v37 = [v6 count];
    v5->_serviceIdentifierCount = v37;
    v5->_shrunkenServiceIdentifiers = malloc_type_calloc(v37, 8uLL, 0x10040436913F5uLL);
    if (v5->_serviceIdentifierCount)
    {
      v38 = 0;
      do
      {
        v39 = [v6 objectAtIndex:{v38, v43}];
        v40 = [v39 lengthOfBytesUsingEncoding:4];
        v41 = malloc_type_malloc((v40 + 1), 0x100004077774924uLL);
        v5->_shrunkenServiceIdentifiers[v38] = v41;
        [v39 getCString:v41 maxLength:v40 + 1 encoding:4];

        ++v38;
      }

      while (v38 < v5->_serviceIdentifierCount);
    }

    objc_autoreleasePoolPop(v43);
    entitlementsCopy = v44;
  }

  return v5;
}

- (id)debugDescription
{
  dictionaryRepresentation = [(IDSEntitlements *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (BOOL)hasService:(id)service forAnyOfEntitlements:(id)entitlements
{
  serviceCopy = service;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  entitlementsCopy = entitlements;
  v8 = [entitlementsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(entitlementsCopy);
        }

        if ([(IDSEntitlements *)self hasService:serviceCopy forEntitlement:*(*(&v14 + 1) + 8 * i), v14])
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v9 = [entitlementsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)hasService:(id)service forEntitlement:(id)entitlement
{
  serviceCopy = service;
  v7 = sub_100003BE4(entitlement);
  if (!v7)
  {
    goto LABEL_25;
  }

  specificEntitlementCount = self->_specificEntitlementCount;
  if (!self->_specificEntitlementCount)
  {
    goto LABEL_25;
  }

  p_var1 = &self->_specificEntitlements->var1;
  while (LOBYTE(p_var1[1].var1) != v7)
  {
    p_var1 += 3;
    if (!--specificEntitlementCount)
    {
      goto LABEL_25;
    }
  }

  var1 = p_var1[-1].var1;
  if (var1 == 57005)
  {
    goto LABEL_25;
  }

  var0 = p_var1->var0;
  if (var1 == 57007)
  {
    v13 = sub_100003A80(serviceCopy);
    uTF8String = [v13 UTF8String];

    v12 = strcmp(uTF8String, self->_shrunkenServiceIdentifiers[var0]) == 0;
    goto LABEL_26;
  }

  if (var1 == 57069)
  {
    v12 = p_var1->var0 != 0;
    goto LABEL_26;
  }

  v15 = sub_100003A80(serviceCopy);
  uTF8String2 = [v15 UTF8String];

  serviceIdentifierCount = self->_serviceIdentifierCount;
  if (!self->_serviceIdentifierCount)
  {
    goto LABEL_25;
  }

  v18 = 0;
  shrunkenServiceIdentifiers = self->_shrunkenServiceIdentifiers;
  while (strcmp(uTF8String2, shrunkenServiceIdentifiers[v18]))
  {
    v12 = 0;
    if (serviceIdentifierCount == ++v18)
    {
      goto LABEL_26;
    }
  }

  if (!var1)
  {
LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  v20 = var1 - 1;
  do
  {
    v21 = *var0++;
    v12 = v18 - v21 == -1;
  }

  while (v18 - v21 != -1 && v20-- != 0);
LABEL_26:

  return v12;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v4 = sub_100003BE4(entitlement);
  if (v4)
  {
    specificEntitlementCount = self->_specificEntitlementCount;
    if (self->_specificEntitlementCount)
    {
      v6 = specificEntitlementCount - 1;
      p_var2 = &self->_specificEntitlements->var2;
      do
      {
        v8 = *p_var2;
        p_var2 += 24;
        LOBYTE(specificEntitlementCount) = v8 == v4;
      }

      while (v8 != v4 && v6-- != 0);
    }
  }

  else
  {
    LOBYTE(specificEntitlementCount) = 0;
  }

  return specificEntitlementCount;
}

@end