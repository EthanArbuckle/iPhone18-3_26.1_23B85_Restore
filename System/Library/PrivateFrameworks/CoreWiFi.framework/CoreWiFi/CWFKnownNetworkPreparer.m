@interface CWFKnownNetworkPreparer
- (BOOL)profilesContainsHomeProfile:(id)a3;
- (CWFKnownNetworkPreparer)initWithNetworkProfiles:(id)a3;
- (id)_filterForPrimaryHomeNetworkProfile:(id)a3;
- (id)_filterProfilesForHomeNetworksExceedingMaximumDistance:(id)a3;
- (id)_homeNetworkComparator;
- (id)_localNetworkFilter;
- (id)_removeProfilesAtSimilarLocations:(id)a3;
- (id)_similarLocationComparator;
- (id)localNetworkPromptProfiles;
- (id)prepareLocalNetworkProfilesForPresentation:(id)a3;
@end

@implementation CWFKnownNetworkPreparer

- (CWFKnownNetworkPreparer)initWithNetworkProfiles:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(CWFKnownNetworkPreparer);
    [(CWFKnownNetworkPreparer *)v5 setProfiles:v4];
    [(CWFKnownNetworkPreparer *)v5 setMaxResults:4];
  }

  else
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      _os_log_send_and_compose_impl();
    }

    v5 = 0;
  }

  return v5;
}

- (id)localNetworkPromptProfiles
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = [(CWFKnownNetworkPreparer *)self profiles];
  v4 = [(CWFKnownNetworkPreparer *)self _localNetworkFilter];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v58 = 138412290;
    v59 = v5;
    LODWORD(v46) = 12;
    v44 = &v58;
    _os_log_send_and_compose_impl();
  }

  v9 = [(CWFKnownNetworkPreparer *)self _lastJoinedComparator];
  v10 = [v5 sortedArrayUsingComparator:v9];

  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v58 = 138412290;
    v59 = v10;
    LODWORD(v46) = 12;
    v44 = &v58;
    _os_log_send_and_compose_impl();
  }

  v14 = [(CWFKnownNetworkPreparer *)self profiles];
  v15 = [(CWFKnownNetworkPreparer *)self _filterForPrimaryHomeNetworkProfile:v14];

  v52 = v5;
  v50 = v15;
  if (v15)
  {
    if (([v10 containsObject:v15] & 1) == 0)
    {
      v16 = [v10 mutableCopy];
      [v16 addObject:v15];

      v10 = v16;
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v58 = 138412290;
      v59 = v15;
      LODWORD(v46) = 12;
      v44 = &v58;
      _os_log_send_and_compose_impl();
    }
  }

  v51 = self;
  [(CWFKnownNetworkPreparer *)self _removeProfilesAtSimilarLocations:v10, v44, v46];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v56 = 0u;
  v49 = v10;
  v20 = [v48 differenceFromArray:v10];
  v21 = [v20 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v54;
    v24 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v54 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v53 + 1) + 8 * i);
        v27 = CWFGetOSLog();
        if (v27)
        {
          v28 = CWFGetOSLog();
        }

        else
        {
          v29 = v24;
          v28 = v24;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v30 = [v26 object];
          v58 = 138412290;
          v59 = v30;
          LODWORD(v47) = 12;
          v45 = &v58;
          _os_log_send_and_compose_impl();
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v22);
  }

  v31 = v48;
  v32 = [v31 mutableCopy];
  v33 = [MEMORY[0x1E695DFA8] set];
  for (j = [v33 count]; j < -[CWFKnownNetworkPreparer maxResults](v51, "maxResults", v45, v47) && objc_msgSend(v32, "count"); j = objc_msgSend(v33, "count"))
  {
    v35 = [v32 firstObject];
    [v33 addObject:v35];

    [v32 removeObjectAtIndex:0];
  }

  v36 = [v33 allObjects];
  v37 = CWFGetOSLog();
  if (v37)
  {
    v38 = CWFGetOSLog();
  }

  else
  {
    v38 = MEMORY[0x1E69E9C10];
    v39 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v58 = 138412290;
    v59 = v36;
    _os_log_send_and_compose_impl();
  }

  if ([v36 count])
  {
    v40 = v36;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  v42 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)prepareLocalNetworkProfilesForPresentation:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v79 = [MEMORY[0x1E695DF90] dictionary];
    v81 = [MEMORY[0x1E695DF70] array];
    v6 = [(CWFKnownNetworkPreparer *)self _presentationSortComparator];
    v80 = v5;
    v7 = [v5 sortedArrayUsingComparator:v6];

    v8 = [(CWFKnownNetworkPreparer *)self _filterProfilesForHomeNetworksExceedingMaximumDistance:v7];
    v78 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v90 = 138412290;
        v91 = v9;
        LODWORD(v76) = 12;
        v74 = &v90;
        _os_log_send_and_compose_impl();
      }

      v14 = [v7 mutableCopy];
      [v14 removeObjectsInArray:v9];
      if ([v14 count] >= 3)
      {
        v15 = [v14 count] - 2;
        v16 = CWFGetOSLog();
        if (v16)
        {
          v17 = CWFGetOSLog();
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v96.location = 2;
          v96.length = v15;
          v19 = NSStringFromRange(v96);
          v90 = 138412290;
          v91 = v19;
          LODWORD(v76) = 12;
          v74 = &v90;
          _os_log_send_and_compose_impl();
        }

        [v14 removeObjectsInRange:{2, v15}];
      }

      v12 = v14;

      v20 = CWFGetOSLog();
      if (v20)
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v90 = 138412290;
        v91 = v12;
        LODWORD(v76) = 12;
        v74 = &v90;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v12 = v7;
    }

    v23 = [v12 firstObject];
    v82 = [v23 _location];

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v12;
    v24 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v85;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v85 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v84 + 1) + 8 * i);
          v29 = [MEMORY[0x1E695DF90] dictionary];
          v30 = [v28 networkName];

          if (v30)
          {
            v31 = [v28 networkName];
            [v29 setObject:v31 forKey:@"mapLabelCalloutTitleKey"];

            v32 = [v28 discoveredDevices];

            if (v32)
            {
              v33 = [v28 discoveredDevices];
              v34 = [v33 objectForKeyedSubscript:@"DevicesCount"];

              if (v34)
              {
                [v29 setObject:v34 forKey:@"mapLabelCalloutDeviceCountKey"];
              }

              else
              {
                v38 = CWFGetOSLog();
                if (v38)
                {
                  v39 = CWFGetOSLog();
                }

                else
                {
                  v39 = MEMORY[0x1E69E9C10];
                  v42 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  v90 = 138412290;
                  v91 = v28;
                  LODWORD(v77) = 12;
                  v75 = &v90;
                  _os_log_send_and_compose_impl();
                }
              }

              v43 = [v28 discoveredDevices];
              v44 = [v43 objectForKeyedSubscript:@"DevicesNames"];

              if (v44 && [v28 _shouldDisplayDeviceNames])
              {
                v45 = [v44 _shuffled];
                v46 = [v44 _removeBackslashAndSpaceCharacter];

                [v29 setObject:v46 forKey:@"mapLabelCalloutDeviceNamesKey"];
              }

              else
              {
                v47 = CWFGetOSLog();
                if (v47)
                {
                  v46 = CWFGetOSLog();
                }

                else
                {
                  v46 = MEMORY[0x1E69E9C10];
                  v48 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                {
                  v90 = 138412290;
                  v91 = v28;
                  LODWORD(v77) = 12;
                  v75 = &v90;
                  _os_log_send_and_compose_impl();
                }
              }
            }

            else
            {
              v37 = CWFGetOSLog();
              if (v37)
              {
                v34 = CWFGetOSLog();
              }

              else
              {
                v34 = MEMORY[0x1E69E9C10];
                v41 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v90 = 138412290;
                v91 = v28;
                LODWORD(v77) = 12;
                v75 = &v90;
                _os_log_send_and_compose_impl();
              }
            }

            v49 = [v28 _location];
            if (v49)
            {
              v36 = v49;
              [v82 distanceFromLocation:v49];
              if (v50 >= 4000000.0)
              {
                v59 = v50;
                v60 = CWFGetOSLog();
                if (v60)
                {
                  v61 = CWFGetOSLog();
                }

                else
                {
                  v61 = MEMORY[0x1E69E9C10];
                  v63 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  v90 = 138412546;
                  v91 = v28;
                  v92 = 2048;
                  v93 = v59;
                  LODWORD(v77) = 22;
                  v75 = &v90;
                  _os_log_send_and_compose_impl();
                }
              }

              else
              {
                v88[0] = @"mapLabelCalloutLatKey";
                v51 = MEMORY[0x1E696AD98];
                [v36 coordinate];
                v52 = [v51 numberWithDouble:?];
                v88[1] = @"mapLabelCalloutLngKey";
                v89[0] = v52;
                v53 = MEMORY[0x1E696AD98];
                [v36 coordinate];
                v55 = [v53 numberWithDouble:v54];
                v89[1] = v55;
                v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];

                [v29 setObject:v56 forKey:@"mapLabelCalloutLocationKey"];
                [v81 addObject:v29];
              }
            }

            else
            {
              v57 = CWFGetOSLog();
              if (v57)
              {
                v58 = CWFGetOSLog();
              }

              else
              {
                v58 = MEMORY[0x1E69E9C10];
                v62 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v90 = 138412290;
                v91 = v28;
                LODWORD(v77) = 12;
                v75 = &v90;
                _os_log_send_and_compose_impl();
              }

              v36 = 0;
            }
          }

          else
          {
            v35 = CWFGetOSLog();
            if (v35)
            {
              v36 = CWFGetOSLog();
            }

            else
            {
              v36 = MEMORY[0x1E69E9C10];
              v40 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v90 = 138412290;
              v91 = v28;
              LODWORD(v77) = 12;
              v75 = &v90;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v25);
    }

    v64 = obj;

    v65 = v79;
    v66 = v81;
    [v79 setObject:v81 forKey:@"mapLabelArrayForCalloutsKey"];
    v5 = v80;
    v67 = v78;
  }

  else
  {
    v71 = CWFGetOSLog();
    if (v71)
    {
      v72 = CWFGetOSLog();
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
      v73 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
    {
      LOWORD(v90) = 0;
      _os_log_send_and_compose_impl();
    }

    v82 = 0;
    v67 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
  }

  v68 = v65;

  v69 = *MEMORY[0x1E69E9840];
  return v65;
}

- (id)_filterProfilesForHomeNetworksExceedingMaximumDistance:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1E0C5CB14;
  v42[3] = &unk_1E86E7250;
  v5 = v4;
  v43 = v5;
  [v3 enumerateObjectsUsingBlock:v42];
  if ([v5 count])
  {
    v29 = v3;
    v33 = [v3 mutableCopy];
    [v33 removeObjectsInArray:v5];
    v31 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v32 = *v39;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v10 = v33;
          v11 = [v10 countByEnumeratingWithState:&v34 objects:v50 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v35;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v35 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v34 + 1) + 8 * j);
                v16 = [v9 _location];
                v17 = [v15 _location];
                [v16 distanceFromLocation:v17];
                v19 = v18;

                if (v19 >= 4000000.0)
                {
                  v20 = CWFGetOSLog();
                  if (v20)
                  {
                    v21 = CWFGetOSLog();
                  }

                  else
                  {
                    v21 = MEMORY[0x1E69E9C10];
                    v22 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    v44 = 138412802;
                    v45 = v9;
                    v46 = 2112;
                    v47 = v15;
                    v48 = 2048;
                    v49 = v19;
                    LODWORD(v27) = 32;
                    v26 = &v44;
                    _os_log_send_and_compose_impl();
                  }

                  [v31 addObject:v9];
                  goto LABEL_22;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v34 objects:v50 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:
        }

        v7 = [obj countByEnumeratingWithState:&v38 objects:v51 count:16];
      }

      while (v7);
    }

    if ([v31 count])
    {
      v23 = v31;
    }

    else
    {
      v23 = 0;
    }

    v5 = v28;
    v3 = v29;
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)profilesContainsHomeProfile:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) _isHomeNetwork])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_filterForPrimaryHomeNetworkProfile:(id)a3
{
  v4 = [(CWFKnownNetworkPreparer *)self profiles];
  v5 = [(CWFKnownNetworkPreparer *)self _homeNetworkFilter];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  if ([v6 count])
  {
    v7 = [(CWFKnownNetworkPreparer *)self _networkProfileUsageComparator];
    v8 = [v6 sortedArrayUsingComparator:v7];

    v9 = [v8 firstObject];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (id)_removeProfilesAtSimilarLocations:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!qword_1ED7E3880)
  {
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = sub_1E0C5DF88;
    v57 = &unk_1E86E55D8;
    v58 = 0;
    v62 = xmmword_1E86E72E0;
    v63 = 0;
    qword_1ED7E3880 = _sl_dlopen();
  }

  if (qword_1ED7E3880)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v41 = [MEMORY[0x1E695DF90] dictionary];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v36 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v51;
      v38 = v6;
      v39 = self;
      v37 = *v51;
      do
      {
        v10 = 0;
        v40 = v8;
        do
        {
          if (*v51 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v50 + 1) + 8 * v10);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            v12 = [MEMORY[0x1E695DF70] array];
            v13 = [v11 _location];
            if (v13)
            {
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v14 = v6;
              v15 = [v14 countByEnumeratingWithState:&v46 objects:v60 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v47;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v47 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v46 + 1) + 8 * i);
                    if (([v19 isEqual:v11] & 1) == 0 && (objc_msgSend(v5, "containsObject:", v19) & 1) == 0)
                    {
                      [v19 _location];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v46 objects:v60 count:16];
                }

                while (v16);
              }

              [v41 setObject:v12 forKey:v11];
              v6 = v38;
              self = v39;
              v9 = v37;
              v8 = v40;
            }
          }

          ++v10;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v8);
    }

    v20 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [v41 allKeys];
    v22 = [v21 countByEnumeratingWithState:&v42 objects:v59 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v43;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v42 + 1) + 8 * j);
          v27 = [MEMORY[0x1E695DF70] arrayWithObject:v26];
          v28 = [v41 objectForKeyedSubscript:v26];
          [v27 addObjectsFromArray:v28];

          v29 = [(CWFKnownNetworkPreparer *)self _similarLocationComparator];
          [v27 sortUsingComparator:v29];

          v30 = [v27 firstObject];
          [v20 addObject:v30];
        }

        v23 = [v21 countByEnumeratingWithState:&v42 objects:v59 count:16];
      }

      while (v23);
    }

    v4 = v36;
  }

  else
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v54) = 0;
      _os_log_send_and_compose_impl();
    }

    v20 = v4;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_localNetworkFilter
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = [v2 _dateByAddingDays:-2];

  v4 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0C5D31C;
  v8[3] = &unk_1E86E7298;
  v9 = v3;
  v5 = v3;
  v6 = [v4 predicateWithBlock:v8];

  return v6;
}

- (id)_similarLocationComparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C5D4AC;
  v4[3] = &unk_1E86E72C0;
  v4[4] = self;
  v2 = MEMORY[0x1E12EA400](v4, a2);

  return v2;
}

- (id)_homeNetworkComparator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C5D90C;
  v4[3] = &unk_1E86E72C0;
  v4[4] = self;
  v2 = MEMORY[0x1E12EA400](v4, a2);

  return v2;
}

@end