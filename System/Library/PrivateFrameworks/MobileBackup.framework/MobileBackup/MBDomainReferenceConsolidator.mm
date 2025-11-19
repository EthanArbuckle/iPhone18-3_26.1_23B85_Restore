@interface MBDomainReferenceConsolidator
- (BOOL)addDomainReference:(id)a3 error:(id *)a4;
- (BOOL)consolidateDomainName:(id)a3 hmacKey:(id)a4;
- (MBDomainReferenceConsolidator)init;
- (void)enumerateConsolidatedDomainNamesAndReference:(id)a3;
- (void)enumerateReferencesWithUnknownDomainName:(id)a3;
@end

@implementation MBDomainReferenceConsolidator

- (MBDomainReferenceConsolidator)init
{
  v10.receiver = self;
  v10.super_class = MBDomainReferenceConsolidator;
  v2 = [(MBDomainReferenceConsolidator *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    domainReferencesByHmac = v2->_domainReferencesByHmac;
    v2->_domainReferencesByHmac = v3;

    v5 = objc_opt_new();
    domainNamesByHmac = v2->_domainNamesByHmac;
    v2->_domainNamesByHmac = v5;

    v7 = objc_opt_new();
    domainHmacsWithUnknownDomainName = v2->_domainHmacsWithUnknownDomainName;
    v2->_domainHmacsWithUnknownDomainName = v7;
  }

  return v2;
}

- (BOOL)addDomainReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 baseRecordID];
  v8 = [MBDomainRecord domainHmacFromBaseRecordID:v7];

  v9 = [(NSMutableDictionary *)self->_domainReferencesByHmac objectForKeyedSubscript:v8];
  v10 = v9;
  if (!v9)
  {
    [(NSMutableDictionary *)self->_domainReferencesByHmac setObject:v6 forKeyedSubscript:v8];
    [(NSMutableSet *)self->_domainHmacsWithUnknownDomainName addObject:v8];
    goto LABEL_8;
  }

  if ([v9 isEqualToReference:v6])
  {
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Inconsistent baseRecordIDs %@ != %@", buf, 0x16u);
    _MBLog();
  }

  if (a4)
  {
    [MBError errorWithCode:205 format:@"Inconsistent baseRecordIDs %@ != %@", v10, v6];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (BOOL)consolidateDomainName:(id)a3 hmacKey:(id)a4
{
  v6 = a3;
  v7 = [MBDomainRecord domainHmacForDomainName:v6 hmacKey:a4];
  v8 = [(NSMutableDictionary *)self->_domainReferencesByHmac objectForKeyedSubscript:v7];

  if (v8)
  {
    [(NSMutableDictionary *)self->_domainNamesByHmac setObject:v6 forKeyedSubscript:v7];
    [(NSMutableSet *)self->_domainHmacsWithUnknownDomainName removeObject:v7];
  }

  return v8 != 0;
}

- (void)enumerateReferencesWithUnknownDomainName:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_domainHmacsWithUnknownDomainName;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_domainReferencesByHmac objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9), v13];
      if (!v10)
      {
        __assert_rtn("[MBDomainReferenceConsolidator enumerateReferencesWithUnknownDomainName:]", "MBDomainReferenceConsolidator.m", 63, "reference");
      }

      v11 = v10;
      v12 = v4[2](v4, v10);

      if (!v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateConsolidatedDomainNamesAndReference:(id)a3
{
  v4 = a3;
  domainNamesByHmac = self->_domainNamesByHmac;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100125318;
  v7[3] = &unk_1003BF538;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)domainNamesByHmac enumerateKeysAndObjectsUsingBlock:v7];
}

@end