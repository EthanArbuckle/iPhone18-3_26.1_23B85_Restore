@interface DMPluginsProvider
- (DMPluginsProvider)initWithReps:(id)reps categories:(unsigned int)categories pluginAllowedList:(id)list;
- (NSArray)allPluginsInRunOrder;
- (NSSet)allPlugins;
@end

@implementation DMPluginsProvider

- (DMPluginsProvider)initWithReps:(id)reps categories:(unsigned int)categories pluginAllowedList:(id)list
{
  categoriesCopy = categories;
  repsCopy = reps;
  listCopy = list;
  v109.receiver = self;
  v109.super_class = DMPluginsProvider;
  v10 = [(DMPluginsProvider *)&v109 init];
  if (v10)
  {
    obj = [listCopy orderedUserAgnosticPluginSpecifiers];
    orderedUserSpecificPluginSpecifiers = [listCopy orderedUserSpecificPluginSpecifiers];
    concurrentUserSpecificPluginSpecifiers = [listCopy concurrentUserSpecificPluginSpecifiers];
    if (categoriesCopy)
    {
      _DMLogFunc();
    }

    v74 = v10;
    v75 = listCopy;
    if ((categoriesCopy & 2) != 0)
    {
      _DMLogFunc();
    }

    v84 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(repsCopy, "count")}];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v76 = repsCopy;
    v11 = repsCopy;
    v12 = [v11 countByEnumeratingWithState:&v105 objects:v115 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v106;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v106 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v105 + 1) + 8 * i);
          name = [v16 name];
          if ([name hasPrefix:@"."])
          {
            goto LABEL_17;
          }

          name2 = [v16 name];
          v19 = [name2 hasSuffix:@".migrator"];

          if (v19)
          {
            if ([v16 isBundleValid])
            {
              bundleIdentifier = [v16 bundleIdentifier];

              if (bundleIdentifier)
              {
                bundleIdentifier2 = [v16 bundleIdentifier];
                [v84 setObject:v16 forKey:bundleIdentifier2];
                goto LABEL_19;
              }
            }

            name = [v16 name];
            v72 = name;
            _DMLogFunc();
LABEL_17:
          }

          bundleIdentifier2 = [v16 name];
          v72 = bundleIdentifier2;
          _DMLogFunc();
LABEL_19:
        }

        v13 = [v11 countByEnumeratingWithState:&v105 objects:v115 count:16];
      }

      while (v13);
    }

    v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count") + objc_msgSend(orderedUserSpecificPluginSpecifiers, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obja = obj;
    v23 = [obja countByEnumeratingWithState:&v101 objects:v114 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v102;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v102 != v25)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v101 + 1) + 8 * j);
          if (categoriesCopy)
          {
            dmps_identifier = [*(*(&v101 + 1) + 8 * j) dmps_identifier];
            v28 = [v84 objectForKeyedSubscript:dmps_identifier];
          }

          else
          {
            v28 = 0;
          }

          v30 = [DataMigrationPlugin alloc];
          dmps_identifier2 = [v27 dmps_identifier];
          v32 = [(DataMigrationPlugin *)v30 initWithIdentifier:dmps_identifier2 fileSystemRep:v28 isUserAgnostic:1];

          [v27 dmps_estimate];
          [(DataMigrationPlugin *)v32 setTimeEstimate:?];
          [v27 dmps_timeIntervalBeforeWatchdog];
          [(DataMigrationPlugin *)v32 setTimeIntervalBeforeWatchdog:?];
          [v27 dmps_timeIntervalBeforeReboot];
          [(DataMigrationPlugin *)v32 setTimeIntervalBeforeReboot:?];
          [v22 addObject:v32];
        }

        v24 = [obja countByEnumeratingWithState:&v101 objects:v114 count:16];
      }

      while (v24);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v79 = orderedUserSpecificPluginSpecifiers;
    v33 = [v79 countByEnumeratingWithState:&v97 objects:v113 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v98;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v98 != v35)
          {
            objc_enumerationMutation(v79);
          }

          v37 = *(*(&v97 + 1) + 8 * k);
          if ((categoriesCopy & 2) != 0 || ([*(*(&v97 + 1) + 8 * k) dmps_excludedFromFirstLogin] & 1) == 0)
          {
            dmps_identifier3 = [v37 dmps_identifier];
            v38 = [v84 objectForKeyedSubscript:dmps_identifier3];
          }

          else
          {
            v38 = 0;
          }

          v40 = [DataMigrationPlugin alloc];
          dmps_identifier4 = [v37 dmps_identifier];
          v42 = [(DataMigrationPlugin *)v40 initWithIdentifier:dmps_identifier4 fileSystemRep:v38 isUserAgnostic:0];

          [v37 dmps_estimate];
          [(DataMigrationPlugin *)v42 setTimeEstimate:?];
          [v37 dmps_timeIntervalBeforeWatchdog];
          [(DataMigrationPlugin *)v42 setTimeIntervalBeforeWatchdog:?];
          [v37 dmps_timeIntervalBeforeReboot];
          [(DataMigrationPlugin *)v42 setTimeIntervalBeforeReboot:?];
          [v22 addObject:v42];
        }

        v34 = [v79 countByEnumeratingWithState:&v97 objects:v113 count:16];
      }

      while (v34);
    }

    v83 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(concurrentUserSpecificPluginSpecifiers, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v78 = concurrentUserSpecificPluginSpecifiers;
    v43 = [v78 countByEnumeratingWithState:&v93 objects:v112 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v94;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v94 != v45)
          {
            objc_enumerationMutation(v78);
          }

          v47 = *(*(&v93 + 1) + 8 * m);
          if ((categoriesCopy & 2) != 0 || ([*(*(&v93 + 1) + 8 * m) dmps_excludedFromFirstLogin] & 1) == 0)
          {
            dmps_identifier5 = [v47 dmps_identifier];
            v48 = [v84 objectForKeyedSubscript:dmps_identifier5];
          }

          else
          {
            v48 = 0;
          }

          v50 = [DataMigrationPlugin alloc];
          dmps_identifier6 = [v47 dmps_identifier];
          v52 = [(DataMigrationPlugin *)v50 initWithIdentifier:dmps_identifier6 fileSystemRep:v48 isUserAgnostic:0];

          dmps_concurrentPluginDependencyIdentifier = [v47 dmps_concurrentPluginDependencyIdentifier];
          [(DataMigrationPlugin *)v52 setIdentifierOfDependency:dmps_concurrentPluginDependencyIdentifier];

          [v47 dmps_estimate];
          [(DataMigrationPlugin *)v52 setTimeEstimate:?];
          [v47 dmps_timeIntervalBeforeWatchdog];
          [(DataMigrationPlugin *)v52 setTimeIntervalBeforeWatchdog:?];
          [v47 dmps_timeIntervalBeforeReboot];
          [(DataMigrationPlugin *)v52 setTimeIntervalBeforeReboot:?];
          [v83 addObject:v52];
        }

        v44 = [v78 countByEnumeratingWithState:&v93 objects:v112 count:16];
      }

      while (v44);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v54 = v22;
    v55 = [v54 countByEnumeratingWithState:&v89 objects:v111 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = 0;
      v58 = *v90;
      do
      {
        for (n = 0; n != v56; n = n + 1)
        {
          if (*v90 != v58)
          {
            objc_enumerationMutation(v54);
          }

          v60 = *(*(&v89 + 1) + 8 * n);
          if ([v60 existsAndShouldRun])
          {
            ++v57;
          }

          else
          {
            [v60 setTimeEstimate:0.0];
          }
        }

        v56 = [v54 countByEnumeratingWithState:&v89 objects:v111 count:16];
      }

      while (v56);
    }

    else
    {
      v57 = 0;
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v61 = v83;
    v62 = [v61 countByEnumeratingWithState:&v85 objects:v110 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v86;
      do
      {
        for (ii = 0; ii != v63; ii = ii + 1)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v85 + 1) + 8 * ii);
          if ([v66 existsAndShouldRun])
          {
            ++v57;
          }

          else
          {
            [v66 setTimeEstimate:0.0];
          }
        }

        v63 = [v61 countByEnumeratingWithState:&v85 objects:v110 count:16];
      }

      while (v63);
    }

    v73 = [NSNumber numberWithUnsignedInteger:v57];
    _DMLogFunc();

    v67 = [v54 copy];
    v10 = v74;
    serialPluginsInRunOrder = v74->_serialPluginsInRunOrder;
    v74->_serialPluginsInRunOrder = v67;

    v69 = [v61 copy];
    concurrentPlugins = v74->_concurrentPlugins;
    v74->_concurrentPlugins = v69;

    listCopy = v75;
    repsCopy = v76;
  }

  return v10;
}

- (NSSet)allPlugins
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_allPlugins)
  {
    v3 = [(NSSet *)selfCopy->_concurrentPlugins setByAddingObjectsFromArray:selfCopy->_serialPluginsInRunOrder];
    allPlugins = selfCopy->_allPlugins;
    selfCopy->_allPlugins = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_allPlugins;

  return v5;
}

- (NSArray)allPluginsInRunOrder
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = selfCopy;
  if (!selfCopy->_allPluginsInRunOrder)
  {
    v22 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](selfCopy->_serialPluginsInRunOrder, "count") + -[NSSet count](selfCopy->_concurrentPlugins, "count")}];
    v3 = [(NSSet *)selfCopy->_concurrentPlugins mutableCopy];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = selfCopy->_serialPluginsInRunOrder;
    v20 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v27 + 1) + 8 * i);
          [v22 addObject:{v4, v17}];
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v5 = [v3 copy];
          v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v6)
          {
            v7 = *v24;
            do
            {
              for (j = 0; j != v6; j = j + 1)
              {
                if (*v24 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v23 + 1) + 8 * j);
                identifierOfDependency = [v9 identifierOfDependency];
                identifier = [v4 identifier];
                v12 = [identifierOfDependency isEqualToString:identifier];

                if (v12)
                {
                  [v22 addObject:v9];
                  [v3 removeObject:v9];
                }
              }

              v6 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v6);
          }
        }

        v20 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }

    v13 = [v22 copy];
    allPluginsInRunOrder = v17->_allPluginsInRunOrder;
    v17->_allPluginsInRunOrder = v13;

    selfCopy = v17;
  }

  objc_sync_exit(selfCopy);

  v15 = v17->_allPluginsInRunOrder;

  return v15;
}

@end