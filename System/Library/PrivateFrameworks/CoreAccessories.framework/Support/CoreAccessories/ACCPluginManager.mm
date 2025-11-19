@interface ACCPluginManager
- (ACCPluginManager)init;
- (NSSet)pluginBundleSearchPaths;
- (NSSet)pluginBundles;
- (NSSet)pluginInstances;
- (id)initClass:(Class)a3;
- (id)pluginInstancesWithClasses:(id)a3;
- (id)pluginInstancesWithProtocols:(id)a3 matchAny:(BOOL)a4;
- (unint64_t)initPlugInsWithBundleNames:(id)a3 orClasses:(id)a4 orProtocols:(id)a5 matchAny:(BOOL)a6;
- (unint64_t)loadAllBundles;
- (unint64_t)loadBundlesWithClasses:(id)a3;
- (unint64_t)loadBundlesWithExtension:(id)a3;
- (unint64_t)loadBundlesWithExtension:(id)a3 andClasses:(id)a4;
- (unint64_t)loadBundlesWithExtension:(id)a3 andNames:(id)a4;
- (unint64_t)loadBundlesWithIdentifiers:(id)a3;
- (unint64_t)loadBundlesWithNames:(id)a3;
- (unint64_t)loadBundlesWithPaths:(id)a3 andIdentifiers:(id)a4 orClasses:(id)a5 orProtocols:(id)a6 matchAny:(BOOL)a7;
- (unint64_t)removeAllBundleSearchPaths;
- (unint64_t)removeAllBundles;
- (unint64_t)removeAllPlugIns;
- (unint64_t)removeBundleSearchPath:(id)a3;
- (unint64_t)removePlugIns:(id)a3;
- (unint64_t)removePlugInsWithClasses:(id)a3;
- (unint64_t)startAllPlugIns;
- (unint64_t)startPlugIns:(id)a3;
- (unint64_t)startPlugInsWithClasses:(id)a3;
- (unint64_t)stopAllPlugIns;
- (unint64_t)stopPlugIns:(id)a3;
- (unint64_t)stopPlugInsWithClasses:(id)a3;
@end

@implementation ACCPluginManager

- (ACCPluginManager)init
{
  v10.receiver = self;
  v10.super_class = ACCPluginManager;
  v2 = [(ACCPluginManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    pluginBundleSearchPathsMutable = v2->_pluginBundleSearchPathsMutable;
    v2->_pluginBundleSearchPathsMutable = v3;

    v5 = objc_alloc_init(NSMutableSet);
    pluginBundlesMutable = v2->_pluginBundlesMutable;
    v2->_pluginBundlesMutable = v5;

    v7 = objc_alloc_init(NSMutableSet);
    pluginInstancesMutable = v2->_pluginInstancesMutable;
    v2->_pluginInstancesMutable = v7;

    v2->_allowDuplicateClassTypes = 0;
  }

  return v2;
}

- (unint64_t)removeBundleSearchPath:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 path];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
          objc_sync_enter(v13);
          v14 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
          [v14 removeObject:v10];

          objc_sync_exit(v13);
          ++v6;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v6;
}

- (unint64_t)removeAllBundleSearchPaths
{
  v3 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
  objc_sync_enter(v3);
  v4 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
  v5 = [v4 count];

  v6 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
  [v6 removeAllObjects];

  objc_sync_exit(v3);
  return v5;
}

- (unint64_t)loadAllBundles
{
  v3 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v4 = [PathEntry bundlePathsWithinEntries:v3];
  v5 = [(ACCPluginManager *)self loadBundlesWithPaths:v4];

  return v5;
}

- (unint64_t)loadBundlesWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v6 = [PathEntry bundlePathsWithinEntries:v5 withExtension:v4];

  v7 = [(ACCPluginManager *)self loadBundlesWithPaths:v6];
  return v7;
}

- (unint64_t)loadBundlesWithExtension:(id)a3 andNames:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v9 = [PathEntry bundlePathsWithinEntries:v8 withExtension:v7 andNames:v6];

  v10 = [(ACCPluginManager *)self loadBundlesWithPaths:v9];
  return v10;
}

- (unint64_t)loadBundlesWithExtension:(id)a3 andClasses:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v9 = [PathEntry bundlePathsWithinEntries:v8 withExtension:v7];

  v10 = [(ACCPluginManager *)self loadBundlesWithPaths:v9 andIdentifiers:0 orClasses:v6 orProtocols:0 matchAny:1];
  return v10;
}

- (unint64_t)loadBundlesWithNames:(id)a3
{
  v4 = a3;
  v5 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v6 = [PathEntry bundlePathsWithinEntries:v5 withExtension:0 andNames:v4];

  v7 = [(ACCPluginManager *)self loadBundlesWithPaths:v6];
  return v7;
}

- (unint64_t)loadBundlesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v6 = [PathEntry bundlePathsWithinEntries:v5];
  v7 = [(ACCPluginManager *)self loadBundlesWithPaths:v6 andIdentifiers:v4 orClasses:0 orProtocols:0 matchAny:1];

  return v7;
}

- (unint64_t)loadBundlesWithClasses:(id)a3
{
  v4 = a3;
  v5 = [(ACCPluginManager *)self pluginBundleSearchPaths];
  v6 = [PathEntry bundlePathsWithinEntries:v5];
  v7 = [(ACCPluginManager *)self loadBundlesWithPaths:v6 andIdentifiers:0 orClasses:v4 orProtocols:0 matchAny:1];

  return v7;
}

- (unint64_t)loadBundlesWithPaths:(id)a3 andIdentifiers:(id)a4 orClasses:(id)a5 orProtocols:(id)a6 matchAny:(BOOL)a7
{
  v12 = a3;
  v53 = a4;
  v52 = a5;
  v50 = a6;
  v48 = self;
  v13 = [(ACCPluginManager *)self pluginBundlesMutable];
  objc_sync_enter(v13);
  v14 = [(ACCPluginManager *)v48 pluginBundlesMutable];
  v46 = [v14 count];

  objc_sync_exit(v13);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v12;
  v51 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
  if (v51)
  {
    v16 = 0;
    v49 = *v64;
    *&v15 = 138412802;
    v45 = v15;
    do
    {
      v17 = 0;
      do
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [NSBundle bundleWithPath:*(*(&v63 + 1) + 8 * v17), v45];

        v16 = v18;
        if (v18)
        {
          [v18 load];
          if ([v18 isLoaded])
          {
            v19 = [v18 principalClass];
            if ([v19 conformsToProtocol:&OBJC_PROTOCOL___ACCPluginProtocol])
            {
              v62 = 0;
              v20 = classImplementsMethodsInProtocol(v19, &OBJC_PROTOCOL___ACCPluginProtocol, 1, 1, &v62);
              v21 = v62;
              if (v20)
              {
                if (!v53 || ![v53 count] || (objc_msgSend(v16, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v53, "containsObject:", v22), v22, v23))
                {
                  if (v52 && [v52 count])
                  {
                    v60 = 0u;
                    v61 = 0u;
                    v58 = 0u;
                    v59 = 0u;
                    v24 = v52;
                    v25 = [v24 countByEnumeratingWithState:&v58 objects:v68 count:16];
                    if (v25)
                    {
                      v26 = *v59;
                      while (2)
                      {
                        for (i = 0; i != v25; i = i + 1)
                        {
                          if (*v59 != v26)
                          {
                            objc_enumerationMutation(v24);
                          }

                          v28 = NSClassFromString(*(*(&v58 + 1) + 8 * i));
                          if (v28 && [v19 isSubclassOfClass:v28])
                          {

                            goto LABEL_26;
                          }
                        }

                        v25 = [v24 countByEnumeratingWithState:&v58 objects:v68 count:16];
                        if (v25)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  else
                  {
LABEL_26:
                    if (!v50 || ![v50 count])
                    {
                      goto LABEL_42;
                    }

                    v56 = 0u;
                    v57 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v29 = v50;
                    v30 = 0;
                    v31 = [v29 countByEnumeratingWithState:&v54 objects:v67 count:16];
                    if (v31)
                    {
                      v32 = *v55;
LABEL_30:
                      v33 = 0;
                      while (1)
                      {
                        if (*v55 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        if ([v19 conformsToProtocol:*(*(&v54 + 1) + 8 * v33)])
                        {
                          ++v30;
                          if (a7)
                          {
                            break;
                          }
                        }

                        if (v31 == ++v33)
                        {
                          v31 = [v29 countByEnumeratingWithState:&v54 objects:v67 count:16];
                          if (v31)
                          {
                            goto LABEL_30;
                          }

                          break;
                        }
                      }
                    }

                    v34 = [v29 count];
                    v35 = v30 && a7;
                    if (v35 || v30 == v34)
                    {
LABEL_42:
                      v36 = [(ACCPluginManager *)v48 pluginBundlesMutable];
                      objc_sync_enter(v36);
                      v37 = [(ACCPluginManager *)v48 pluginBundlesMutable];
                      [v37 addObject:v16];

                      objc_sync_exit(v36);
                    }
                  }
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v38 = NSStringFromClass(v19);
                v39 = [v16 bundlePath];
                *buf = v45;
                v70 = v38;
                v71 = 2112;
                v72 = v39;
                v73 = 2112;
                v74 = v21;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Class '%@' in bundle '%@' is missing implementation(s) for the following instance method(s):\n%@", buf, 0x20u);
              }
            }
          }

          else
          {
            [ACCPluginManager loadBundlesWithPaths:v75 andIdentifiers:v18 orClasses:&v76 orProtocols:? matchAny:?];
          }
        }

        v17 = v17 + 1;
      }

      while (v17 != v51);
      v40 = [obj countByEnumeratingWithState:&v63 objects:v77 count:16];
      v51 = v40;
    }

    while (v40);
  }

  else
  {
    v16 = 0;
  }

  v41 = [(ACCPluginManager *)v48 pluginBundlesMutable];
  objc_sync_enter(v41);
  v42 = [(ACCPluginManager *)v48 pluginBundlesMutable];
  v43 = [v42 count];

  objc_sync_exit(v41);
  return v43 - v46;
}

- (unint64_t)removeAllBundles
{
  v3 = [(ACCPluginManager *)self pluginBundlesMutable];
  objc_sync_enter(v3);
  v4 = [(ACCPluginManager *)self pluginBundlesMutable];
  v5 = [v4 count];

  objc_sync_exit(v3);
  if (v5)
  {
    [(ACCPluginManager *)self removeAllPlugIns];
    v6 = [(ACCPluginManager *)self pluginBundlesMutable];
    objc_sync_enter(v6);
    v7 = [(ACCPluginManager *)self pluginBundlesMutable];
    v5 = [v7 count];

    v8 = [(ACCPluginManager *)self pluginBundlesMutable];
    [v8 removeAllObjects];

    objc_sync_exit(v6);
  }

  return v5;
}

- (unint64_t)initPlugInsWithBundleNames:(id)a3 orClasses:(id)a4 orProtocols:(id)a5 matchAny:(BOOL)a6
{
  v55 = a3;
  v51 = a4;
  v52 = a5;
  v54 = self;
  v9 = [(ACCPluginManager *)self pluginBundles];

  if (v9)
  {
    v47 = (!v55 || ![v55 count]) && (!v51 || !objc_msgSend(v51, "count")) && (!v52 || !objc_msgSend(v52, "count"));
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [(ACCPluginManager *)self pluginBundles];
    v49 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v49)
    {
      v50 = 0;
      v46 = 0;
      v48 = *v72;
      do
      {
        v10 = 0;
        v11 = v55;
        do
        {
          if (*v72 != v48)
          {
            v12 = v10;
            objc_enumerationMutation(obj);
            v11 = v55;
            v10 = v12;
          }

          v13 = v11 == 0;
          v53 = v10;
          v14 = *(*(&v71 + 1) + 8 * v10);
          v57 = [v14 principalClass];
          if (v13 || ![v55 count])
          {
            v16 = 0;
          }

          else
          {
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v15 = v55;
            v16 = 0;
            v17 = [v15 countByEnumeratingWithState:&v67 objects:v77 count:16];
            if (v17)
            {
              v18 = *v68;
              do
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v68 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v67 + 1) + 8 * i);
                  v21 = [v14 bundlePath];
                  v22 = [v21 lastPathComponent];
                  v23 = [v22 stringByDeletingPathExtension];
                  LODWORD(v20) = [v23 isEqualToString:v20];

                  v16 |= v20;
                }

                v17 = [v15 countByEnumeratingWithState:&v67 objects:v77 count:16];
              }

              while (v17);
            }
          }

          if (v51 && [v51 count])
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v24 = v51;
            v25 = [v24 countByEnumeratingWithState:&v63 objects:v76 count:16];
            if (v25)
            {
              v26 = 0;
              v27 = *v64;
              do
              {
                for (j = 0; j != v25; j = j + 1)
                {
                  if (*v64 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = NSClassFromString(*(*(&v63 + 1) + 8 * j));
                  if (v29)
                  {
                    v26 |= [objc_msgSend(v14 "principalClass")];
                  }
                }

                v25 = [v24 countByEnumeratingWithState:&v63 objects:v76 count:16];
              }

              while (v25);
              v30 = v26 ^ 1;
            }

            else
            {
              v30 = 1;
            }
          }

          else
          {
            v30 = 1;
          }

          if (v52 && [v52 count])
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v31 = v52;
            v32 = 0;
            v33 = [v31 countByEnumeratingWithState:&v59 objects:v75 count:16];
            if (v33)
            {
              v34 = *v60;
LABEL_46:
              v35 = 0;
              while (1)
              {
                if (*v60 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                if ([v57 conformsToProtocol:*(*(&v59 + 1) + 8 * v35)])
                {
                  ++v32;
                  if (a6)
                  {
                    break;
                  }
                }

                if (v33 == ++v35)
                {
                  v33 = [v31 countByEnumeratingWithState:&v59 objects:v75 count:16];
                  if (v33)
                  {
                    goto LABEL_46;
                  }

                  break;
                }
              }
            }

            v36 = ((v32 == 0) | ~a6) & (v32 != [v31 count]);
          }

          else
          {
            v36 = 1;
          }

          if ((v30 & ~(v47 | v16) & 1) == 0 || (v36 & 1) == 0)
          {
            if ([(ACCPluginManager *)v54 allowDuplicateClassTypes])
            {
              goto LABEL_59;
            }

            v37 = [(ACCPluginManager *)v54 pluginInstances];
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 3221225472;
            v58[2] = __78__ACCPluginManager_initPlugInsWithBundleNames_orClasses_orProtocols_matchAny___block_invoke;
            v58[3] = &__block_descriptor_40_e33_B24__0___ACCPluginProtocol__8_B16lu32l8;
            v58[4] = v57;
            v38 = [v37 objectsPassingTest:v58];
            v39 = [v38 count] == 0;

            if (v39)
            {
LABEL_59:
              v40 = v54;
              v41 = [(ACCPluginManager *)v40 initClass:v57];

              if (v41)
              {
                [v41 initPlugin];
                v42 = [(ACCPluginManager *)v40 pluginInstancesMutable];
                objc_sync_enter(v42);
                v43 = [(ACCPluginManager *)v40 pluginInstancesMutable];
                [v43 addObject:v41];

                objc_sync_exit(v42);
                ++v46;
                v50 = v41;
              }

              else
              {
                v50 = 0;
              }
            }
          }

          v10 = v53 + 1;
          v11 = v55;
        }

        while ((v53 + 1) != v49);
        v49 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
      }

      while (v49);
    }

    else
    {
      v50 = 0;
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

uint64_t __78__ACCPluginManager_initPlugInsWithBundleNames_orClasses_orProtocols_matchAny___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = 1;
  }

  return isKindOfClass & 1;
}

- (unint64_t)startAllPlugIns
{
  v3 = [(ACCPluginManager *)self pluginInstances];
  v4 = [(ACCPluginManager *)self startPlugIns:v3];

  return v4;
}

- (unint64_t)startPlugInsWithClasses:(id)a3
{
  v4 = [(ACCPluginManager *)self pluginInstancesWithClasses:a3];
  v5 = [(ACCPluginManager *)self startPlugIns:v4];

  return v5;
}

- (unint64_t)startPlugIns:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if (([v11 isRunning] & 1) == 0)
          {
            [v11 startPlugin];
            v8 += [v11 isRunning];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)stopAllPlugIns
{
  v3 = [(ACCPluginManager *)self pluginInstances];
  v4 = [(ACCPluginManager *)self stopPlugIns:v3];

  return v4;
}

- (unint64_t)stopPlugInsWithClasses:(id)a3
{
  v4 = [(ACCPluginManager *)self pluginInstancesWithClasses:a3];
  v5 = [(ACCPluginManager *)self stopPlugIns:v4];

  return v5;
}

- (unint64_t)stopPlugIns:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isRunning])
          {
            [v11 stopPlugin];
            v8 += [v11 isRunning] ^ 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)removeAllPlugIns
{
  v3 = [(ACCPluginManager *)self pluginInstances];
  v4 = [(ACCPluginManager *)self removePlugIns:v3];

  return v4;
}

- (unint64_t)removePlugInsWithClasses:(id)a3
{
  v4 = [(ACCPluginManager *)self pluginInstancesWithClasses:a3];
  v5 = [(ACCPluginManager *)self removePlugIns:v4];

  return v5;
}

- (unint64_t)removePlugIns:(id)a3
{
  v4 = a3;
  [(ACCPluginManager *)self stopPlugIns:v4];
  v5 = [v4 count];
  v6 = [(ACCPluginManager *)self pluginInstancesMutable];
  objc_sync_enter(v6);
  v7 = [(ACCPluginManager *)self pluginInstancesMutable];
  [v7 minusSet:v4];

  objc_sync_exit(v6);
  return v5;
}

- (id)pluginInstancesWithClasses:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = +[NSMutableSet set];
    v7 = [(ACCPluginManager *)self pluginInstances];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __47__ACCPluginManager_pluginInstancesWithClasses___block_invoke;
    v14 = &unk_10022A878;
    v15 = v5;
    v16 = v6;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:&v11];

    v9 = [NSSet setWithSet:v8, v11, v12, v13, v14];
  }

  else
  {
    v9 = [(ACCPluginManager *)self pluginInstances];
  }

  return v9;
}

void __47__ACCPluginManager_pluginInstancesWithClasses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  LODWORD(v4) = [v4 containsObject:v6];

  if (v4)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (id)pluginInstancesWithProtocols:(id)a3 matchAny:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v8 = +[NSMutableSet set];
    v9 = [(ACCPluginManager *)self pluginInstances];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __58__ACCPluginManager_pluginInstancesWithProtocols_matchAny___block_invoke;
    v13[3] = &unk_10022A8A0;
    v16 = a4;
    v14 = v7;
    v15 = v8;
    v10 = v8;
    [v9 enumerateObjectsUsingBlock:v13];

    v11 = [NSSet setWithSet:v10];
  }

  else
  {
    v11 = [(ACCPluginManager *)self pluginInstances];
  }

  return v11;
}

void __58__ACCPluginManager_pluginInstancesWithProtocols_matchAny___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v11;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v11 != v8)
      {
        objc_enumerationMutation(v4);
      }

      if ([v3 conformsToProtocol:{*(*(&v10 + 1) + 8 * v9), v10}])
      {
        ++v7;
        if (*(a1 + 48))
        {
          break;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 == [*(a1 + 32) count] || *(a1 + 48) == 1 && v7)
  {
    [*(a1 + 40) addObject:{v3, v10}];
  }
}

- (id)initClass:(Class)a3
{
  v4 = objc_alloc_init(a3);

  return v4;
}

- (NSSet)pluginBundleSearchPaths
{
  v3 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
  objc_sync_enter(v3);
  v4 = [(ACCPluginManager *)self pluginBundleSearchPathsMutable];
  v5 = [NSSet setWithSet:v4];

  objc_sync_exit(v3);

  return v5;
}

- (NSSet)pluginBundles
{
  v3 = [(ACCPluginManager *)self pluginBundlesMutable];
  objc_sync_enter(v3);
  v4 = [(ACCPluginManager *)self pluginBundlesMutable];
  v5 = [NSSet setWithSet:v4];

  objc_sync_exit(v3);

  return v5;
}

- (NSSet)pluginInstances
{
  v3 = [(ACCPluginManager *)self pluginInstancesMutable];
  objc_sync_enter(v3);
  v4 = [(ACCPluginManager *)self pluginInstancesMutable];
  v5 = [NSSet setWithSet:v4];

  objc_sync_exit(v3);

  return v5;
}

- (void)loadBundlesWithPaths:(void *)a3 andIdentifiers:orClasses:orProtocols:matchAny:.cold.1(uint8_t *a1, void *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = [a2 bundlePath];
    *a1 = 138412290;
    *a3 = v6;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error loading bundle: %@", a1, 0xCu);
  }
}

@end