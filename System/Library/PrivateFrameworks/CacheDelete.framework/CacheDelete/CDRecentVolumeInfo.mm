@interface CDRecentVolumeInfo
+ (id)CDRecentVolumeInfo:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isStale;
- (CDRecentVolumeInfo)initWithCoder:(id)a3;
- (CDRecentVolumeInfo)initWithServices:(id)a3 volumeName:(id)a4;
- (CDRecentVolumeInfo)initWithVolumeInfo:(id)a3;
- (id)_recentInfoAtUrgency:(int)a3 validateResults:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)volumeServices;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)log;
- (void)removeServiceInfo:(id)a3;
@end

@implementation CDRecentVolumeInfo

- (id)volumeServices
{
  v2 = [(CDRecentVolumeInfo *)self services];
  v3 = [v2 allKeys];

  return v3;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CDRecentVolumeInfo *)self services];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\t%@:", v8];
        [v3 addObject:v9];

        v10 = MEMORY[0x1E696AEC0];
        v11 = [(CDRecentVolumeInfo *)self services];
        v12 = [v11 objectForKeyedSubscript:v8];
        v13 = [v10 stringWithFormat:@"%@", v12];
        [v3 addObject:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = [v3 componentsJoinedByString:@"\n"];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (CDRecentVolumeInfo)initWithServices:(id)a3 volumeName:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = CDRecentVolumeInfo;
  v8 = [(CDRecentVolumeInfo *)&v22 init];
  v9 = v8;
  if (!v8)
  {
LABEL_11:
    v14 = v9;
    goto LABEL_12;
  }

  objc_storeStrong(&v8->_volume, a4);
  v10 = [(CDRecentVolumeInfo *)v9 createVolumeWithPath:v7];
  cdVolume = v9->_cdVolume;
  v9->_cdVolume = v10;

  if (v9->_volume && v9->_cdVolume)
  {
    if (v6)
    {
      v12 = [v6 mutableCopy];
    }

    else
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    services = v9->_services;
    v9->_services = v12;

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v9->_cdVolume, "freespace")}];
    freespace = v9->_freespace;
    v9->_freespace = v16;

    v9->_volumeState = [(CacheDeleteVolume *)v9->_cdVolume state];
    v18 = [MEMORY[0x1E695DF00] date];
    timestamp = v9->_timestamp;
    v9->_timestamp = v18;

    v9->_hasSnapshot = 0;
    goto LABEL_11;
  }

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v24 = 40;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
  }

  v14 = 0;
LABEL_12:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CDRecentVolumeInfo)initWithVolumeInfo:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v52.receiver = self;
  v52.super_class = CDRecentVolumeInfo;
  v5 = [(CDRecentVolumeInfo *)&v52 init];
  if (!v5)
  {
LABEL_23:
    v31 = v5;
    goto LABEL_24;
  }

  v6 = [v4 volume];
  volume = v5->_volume;
  v5->_volume = v6;

  v8 = [v4 volume];
  v9 = [(CDRecentVolumeInfo *)v5 createVolumeWithPath:v8];
  cdVolume = v5->_cdVolume;
  v5->_cdVolume = v9;

  if (v5->_volume && v5->_cdVolume)
  {
    v11 = [v4 services];

    v12 = [MEMORY[0x1E695DF90] dictionary];
    v13 = v12;
    if (v11)
    {
      v45 = v5;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v14 = [v4 services];
      v15 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = v15;
      v17 = "client";
      v47 = *v49;
      while (1)
      {
        v18 = 0;
        v46 = v16;
        do
        {
          if (*v49 != v47)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v48 + 1) + 8 * v18);
          if ([v4 _validateWithSharedCacheDeleteForService:v19])
          {
            v20 = [v4 services];
            v21 = [v20 objectForKeyedSubscript:v19];
            v22 = [v21 copy];
            [v13 setObject:v22 forKeyedSubscript:v19];
          }

          else
          {
            v20 = CDGetLogHandle(v17);
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_15;
            }

            v21 = [v4 volume];
            v22 = [v4 services];
            [v22 objectForKeyedSubscript:v19];
            v23 = v17;
            v24 = v4;
            v25 = v14;
            v27 = v26 = v13;
            *buf = 67110146;
            v54 = 72;
            v55 = 2080;
            v56 = "[CDRecentVolumeInfo initWithVolumeInfo:]";
            v57 = 2112;
            v58 = v21;
            v59 = 2112;
            v60 = v19;
            v61 = 2112;
            v62 = v27;
            _os_log_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_DEFAULT, "%d : %s excluding: volume: %@, service: %@, value: %@", buf, 0x30u);

            v13 = v26;
            v14 = v25;
            v4 = v24;
            v17 = v23;
            v16 = v46;
          }

LABEL_15:
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v48 objects:v63 count:16];
        if (!v16)
        {
LABEL_17:

          v28 = [v13 mutableCopy];
          v5 = v45;
          services = v45->_services;
          v45->_services = v28;

          goto LABEL_22;
        }
      }
    }

    v32 = v5->_services;
    v5->_services = v12;
    v13 = v32;
LABEL_22:

    v5->_reserve = [v4 reserve];
    v33 = [v4 bsdDisk];
    bsdDisk = v5->_bsdDisk;
    v5->_bsdDisk = v33;

    v35 = [v4 thresholds];
    v36 = [v35 copy];
    thresholds = v5->_thresholds;
    v5->_thresholds = v36;

    v5->_hasSnapshot = [v4 hasSnapshot];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[CacheDeleteVolume freespace](v5->_cdVolume, "freespace")}];
    freespace = v5->_freespace;
    v5->_freespace = v38;

    v5->_volumeState = [(CacheDeleteVolume *)v5->_cdVolume state];
    v40 = [MEMORY[0x1E695DF00] date];
    timestamp = v5->_timestamp;
    v5->_timestamp = v40;

    goto LABEL_23;
  }

  v30 = CDGetLogHandle("client");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v44 = [v4 volume];
    *buf = 67109378;
    v54 = 63;
    v55 = 2112;
    v56 = v44;
    _os_log_debug_impl(&dword_1BA7F1000, v30, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
  }

  v31 = 0;
LABEL_24:

  v42 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (id)CDRecentVolumeInfo:(id)a3
{
  v3 = a3;
  v4 = [[CDRecentVolumeInfo alloc] initWithServices:0 volumeName:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(CDRecentVolumeInfo);
  v6 = [(CDRecentVolumeInfo *)self services];
  v7 = [v6 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setServices:v7];

  v8 = [(CDRecentVolumeInfo *)self timestamp];
  v9 = [v8 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setTimestamp:v9];

  v10 = [(CDRecentVolumeInfo *)self freespace];
  v11 = [v10 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setFreespace:v11];

  v12 = [(CDRecentVolumeInfo *)self volume];
  v13 = [v12 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setVolume:v13];

  [(CDRecentVolumeInfo *)v5 setVolumeState:[(CDRecentVolumeInfo *)self volumeState]];
  v14 = [(CDRecentVolumeInfo *)self thresholds];
  v15 = [v14 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setThresholds:v15];

  v16 = [(CDRecentVolumeInfo *)self bsdDisk];
  v17 = [v16 copyWithZone:a3];
  [(CDRecentVolumeInfo *)v5 setBsdDisk:v17];

  [(CDRecentVolumeInfo *)v5 setReserve:[(CDRecentVolumeInfo *)self reserve]];
  [(CDRecentVolumeInfo *)v5 setHasSnapshot:[(CDRecentVolumeInfo *)self hasSnapshot]];
  v18 = [(CDRecentVolumeInfo *)self volume];
  v19 = [(CDRecentVolumeInfo *)self createVolumeWithPath:v18];
  [(CDRecentVolumeInfo *)v5 setCdVolume:v19];

  return v5;
}

- (CDRecentVolumeInfo)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = CDRecentVolumeInfo;
  v5 = [(CDRecentVolumeInfo *)&v43 init];
  if (!v5)
  {
LABEL_20:
    v17 = v5;
    goto LABEL_21;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_VOLUME"];
  volume = v5->_volume;
  v5->_volume = v6;

  if (v5->_volume)
  {
    v8 = [(CDRecentVolumeInfo *)v5 createVolumeWithMountPoint:?];
    cdVolume = v5->_cdVolume;
    v5->_cdVolume = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_TIMESTAMP"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_FREESPACE"];
    freespace = v5->_freespace;
    v5->_freespace = v12;

    if ([v4 containsValueForKey:@"CACHE_DELETE_VOLUME_STATE"])
    {
      v14 = [v4 decodeIntegerForKey:@"CACHE_DELETE_VOLUME_STATE"];
LABEL_15:
      v5->_volumeState = v14;
      v18 = MEMORY[0x1E695DFD8];
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 setWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [v4 decodeObjectOfClasses:v21 forKey:@"CACHE_DELETE_SERVICES"];
      v23 = [v22 mutableCopy];
      services = v5->_services;
      v5->_services = v23;

      if (!v5->_services)
      {
        v25 = objc_opt_new();
        v26 = v5->_services;
        v5->_services = v25;
      }

      v27 = MEMORY[0x1E695DFD8];
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
      v31 = [v4 decodeObjectOfClasses:v30 forKey:@"CACHE_DELETE_THRESHOLDS"];
      v32 = [v31 mutableCopy];
      thresholds = v5->_thresholds;
      v5->_thresholds = v32;

      if (!v5->_thresholds)
      {
        v34 = objc_opt_new();
        v35 = v5->_thresholds;
        v5->_thresholds = v34;
      }

      v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_BSD_DISK"];
      bsdDisk = v5->_bsdDisk;
      v5->_bsdDisk = v36;

      v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CACHE_DELETE_RESERVE"];
      v5->_reserve = [v38 unsignedIntegerValue];
      v5->_hasSnapshot = [v4 decodeBoolForKey:@"CACHE_DELETE_HAS_SNAPSHOT"];

      goto LABEL_20;
    }

    v16 = v5->_cdVolume;
    if (v16)
    {
      if ([(CacheDeleteVolume *)v16 validate])
      {
        v14 = [(CacheDeleteVolume *)v5->_cdVolume state];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_15;
    }

    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v42 = v5->_volume;
      *buf = 67109378;
      v45 = 131;
      v46 = 2112;
      v47 = v42;
      _os_log_debug_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
    }
  }

  else
  {
    v15 = CDGetLogHandle("client");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v41 = v5->_volume;
      *buf = 67109378;
      v45 = 119;
      v46 = 2112;
      v47 = v41;
      _os_log_debug_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo unable to validate mount point: %@", buf, 0x12u);
    }
  }

  v17 = 0;
LABEL_21:

  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(CDRecentVolumeInfo *)self timestamp];
  [v11 encodeObject:v4 forKey:@"CACHE_DELETE_TIMESTAMP"];

  v5 = [(CDRecentVolumeInfo *)self freespace];
  [v11 encodeObject:v5 forKey:@"CACHE_DELETE_FREESPACE"];

  v6 = [(CDRecentVolumeInfo *)self services];
  [v11 encodeObject:v6 forKey:@"CACHE_DELETE_SERVICES"];

  v7 = [(CDRecentVolumeInfo *)self volume];
  [v11 encodeObject:v7 forKey:@"CACHE_DELETE_VOLUME"];

  [v11 encodeInteger:-[CDRecentVolumeInfo volumeState](self forKey:{"volumeState"), @"CACHE_DELETE_VOLUME_STATE"}];
  v8 = [(CDRecentVolumeInfo *)self thresholds];
  [v11 encodeObject:v8 forKey:@"CACHE_DELETE_THRESHOLDS"];

  v9 = [(CDRecentVolumeInfo *)self bsdDisk];
  [v11 encodeObject:v9 forKey:@"CACHE_DELETE_BSD_DISK"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CDRecentVolumeInfo reserve](self, "reserve")}];
  [v11 encodeObject:v10 forKey:@"CACHE_DELETE_RESERVE"];

  [v11 encodeBool:-[CDRecentVolumeInfo hasSnapshot](self forKey:{"hasSnapshot"), @"CACHE_DELETE_HAS_SNAPSHOT"}];
}

- (id)_recentInfoAtUrgency:(int)a3 validateResults:(BOOL)a4
{
  v153 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(CDRecentVolumeInfo *)self cdVolume];

  v130 = self;
  if (!v7)
  {
    v13 = [(CDRecentVolumeInfo *)self volume];

    if (v13)
    {
      v14 = [(CDRecentVolumeInfo *)self volume];
      v15 = [(CDRecentVolumeInfo *)self createVolumeWithPath:v14];
      [(CDRecentVolumeInfo *)self setCdVolume:v15];

      v16 = [(CDRecentVolumeInfo *)self cdVolume];

      if (!v16)
      {
        v17 = CDGetLogHandle("client");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v110 = [(CDRecentVolumeInfo *)v130 volume];
          *buf = 138412290;
          *v147 = v110;
          _os_log_error_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_ERROR, "CDRecentVolumeInfo _recentInfoAtUrgency: Unable to create cdVolume for %@", buf, 0xCu);
        }

        v18 = 0;
        goto LABEL_103;
      }
    }
  }

  v8 = [(CDRecentVolumeInfo *)self cdVolume];

  if (v8)
  {
    v9 = [(CDRecentVolumeInfo *)self cdVolume];
    v129 = [v9 freespace];

    v10 = [(CDRecentVolumeInfo *)self cdVolume];
    v127 = [v10 used];

    v11 = [(CDRecentVolumeInfo *)self cdVolume];
    v125 = [v11 size];

    v12 = [(CDRecentVolumeInfo *)self cdVolume];
    v123 = [v12 effective_size];
  }

  else
  {
    v123 = 0;
    v125 = 0;
    v127 = 0;
    v129 = 0;
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = [(CDRecentVolumeInfo *)self services];
  v115 = v6;
  v19 = self;
  v117 = [obj countByEnumeratingWithState:&v140 objects:v152 count:16];
  if (!v117)
  {
    v114 = 0;
    v20 = 0;
    goto LABEL_60;
  }

  v114 = 0;
  v20 = 0;
  v116 = *v141;
  v21 = @"CACHE_DELETE_SIGNING_ID";
  do
  {
    for (i = 0; i != v117; i = v45 + 1)
    {
      if (*v141 != v116)
      {
        objc_enumerationMutation(obj);
      }

      v118 = i;
      v119 = v20;
      v23 = *(*(&v140 + 1) + 8 * i);
      v24 = [(CDRecentVolumeInfo *)v19 services];
      v25 = [v24 objectForKeyedSubscript:v23];

      v122 = [v25 nonPurgeableAmount];
      v26 = [v25 serviceInfo];
      v120 = [v26 objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];

      v27 = [v25 serviceInfo];
      v28 = [v27 objectForKeyedSubscript:v21];
      if (v28)
      {

        v19 = v130;
LABEL_18:
        v31 = [MEMORY[0x1E695DF90] dictionary];
        v32 = [v25 serviceInfo];
        v33 = [v32 objectForKeyedSubscript:v21];

        if (v33)
        {
          v34 = [v25 serviceInfo];
          v35 = [v34 objectForKeyedSubscript:v21];
          [v31 setObject:v35 forKeyedSubscript:v21];
        }

        v36 = [v25 serviceInfo];
        v37 = [v36 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

        if (v37)
        {
          v38 = [v25 serviceInfo];
          v39 = [v38 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
          [v31 setObject:v39 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
        }

        v40 = [v31 copy];
        [v115 setObject:v40 forKeyedSubscript:v23];

        goto LABEL_23;
      }

      v29 = [v25 serviceInfo];
      v30 = [v29 objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];

      v19 = v130;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_23:
      v41 = v122;
      if (v122 && [v122 unsignedLongLongValue])
      {
        v42 = [v122 unsignedLongLongValue];
        v43 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
        if (!v43)
        {
          v43 = [MEMORY[0x1E695DF90] dictionary];
          [v5 setObject:v43 forKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
        }

        v114 += v42;
        if (v120)
        {
          v44 = v120;
        }

        else
        {
          v44 = v122;
        }

        [v43 setObject:v44 forKeyedSubscript:v23];
      }

      if ([v23 isEqualToString:@"CACHE_DELETE_TOTAL_FSPURGEABLE"])
      {
        v45 = v118;
        v20 = v119;
        goto LABEL_56;
      }

      v46 = a3;
      if (a4)
      {
        v46 = a3;
        if (![(CDRecentVolumeInfo *)v19 _validateWithSharedCacheDeleteForService:v23])
        {
          v47 = CDGetLogHandle("client");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [(CDRecentVolumeInfo *)v19 volume];
            v49 = [(CDRecentVolumeInfo *)v19 services];
            v50 = [v49 objectForKeyedSubscript:v23];
            *buf = 67110146;
            *v147 = 308;
            *&v147[4] = 2080;
            *&v147[6] = "[CDRecentVolumeInfo _recentInfoAtUrgency:validateResults:]";
            *&v147[14] = 2112;
            *&v147[16] = v48;
            v148 = 2112;
            v149 = v23;
            v150 = 2112;
            v151 = v50;
            _os_log_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_DEFAULT, "%d : %s excluding: volume: %@, service: %@, value: %@", buf, 0x30u);
          }

          v45 = v118;
          v20 = v119;
          v41 = v122;
          goto LABEL_55;
        }
      }

      while (1)
      {
        v51 = [v25 amountAtUrgency:v46 checkTimestamp:1];
        if (v51)
        {
          break;
        }

LABEL_45:

        v62 = __OFSUB__(v46, 1);
        v46 = (v46 - 1);
        if ((v46 < 0) ^ v62 | (v46 == 0))
        {
          v20 = v119;
          v41 = v122;
          goto LABEL_52;
        }
      }

      if ([v23 hasPrefix:@"CACHE_DELETE_SUR_"])
      {
        [v5 setObject:v51 forKeyedSubscript:v23];
        goto LABEL_45;
      }

      v52 = [(CDRecentVolumeInfo *)v19 cdVolume];
      v53 = [v52 amountIsRational:v51 freespace:v129 effective_size:v123 used:v127 size:v125];

      if (!v53)
      {
        v54 = v21;
        v55 = v5;
        v56 = MEMORY[0x1E696AEC0];
        v57 = [v51 unsignedLongLongValue];
        v58 = humanReadableNumber([v51 unsignedLongLongValue]);
        v59 = [(CDRecentVolumeInfo *)v19 cdVolume];
        v60 = [v56 stringWithFormat:@"implausible value %llu (%@) for service: %@ at urgency %d on volume: %@", v57, v58, v23, v46, v59];

        v61 = CDGetLogHandle("client");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *v147 = 334;
          *&v147[4] = 2112;
          *&v147[6] = v60;
          _os_log_error_impl(&dword_1BA7F1000, v61, OS_LOG_TYPE_ERROR, "%d CDRecentVolumeInfo _recentInfoAtUrgency: Discarding %@", buf, 0x12u);
        }

        v5 = v55;
        v19 = v130;
        v21 = v54;
        goto LABEL_45;
      }

      [v5 setObject:v51 forKeyedSubscript:v23];
      v63 = fsPurgeableTypeToServiceMap();
      v64 = [v63 allValues];
      v65 = [v64 containsObject:v23];

      if (v65)
      {
        v20 = v119;
      }

      else
      {
        v20 = [v51 unsignedLongLongValue] + v119;
      }

      v41 = v122;

LABEL_52:
      v47 = CDGetLogHandle("client");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        v66 = [v5 objectForKeyedSubscript:v23];
        *buf = 67109890;
        *v147 = 337;
        *&v147[4] = 2112;
        *&v147[6] = v23;
        *&v147[14] = 2112;
        *&v147[16] = v66;
        v148 = 2112;
        v149 = v25;
        _os_log_debug_impl(&dword_1BA7F1000, v47, OS_LOG_TYPE_DEBUG, "%d CDRecentVolumeInfo _recentInfoAtUrgency, service: %@, amount: %@ %@", buf, 0x26u);

        v19 = v130;
      }

      v45 = v118;
LABEL_55:

LABEL_56:
    }

    v117 = [obj countByEnumeratingWithState:&v140 objects:v152 count:16];
  }

  while (v117);
LABEL_60:

  [(CDRecentVolumeInfo *)v19 cdVolume];
  v68 = v67 = v19;

  if (v68)
  {
    v69 = [(CDRecentVolumeInfo *)v67 _reserveForVolume];
    v70 = [(CDRecentVolumeInfo *)v67 cdVolume];
    v71 = [v70 size];
    v72 = [(CDRecentVolumeInfo *)v67 cdVolume];
    v73 = v71 - [v72 freespace];

    if (v20 >= v73 - v69)
    {
      v74 = v73 - v69;
    }

    else
    {
      v74 = v20;
    }

    if (v73 > v69 && v74)
    {
      v75 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      [v5 setObject:v75 forKeyedSubscript:@"CACHE_DELETE_SHARED_PURGEABLE"];
      goto LABEL_69;
    }
  }

  else
  {
    v75 = CDGetLogHandle("client");
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
    {
      v109 = [(CDRecentVolumeInfo *)v130 volume];
      *buf = 67109378;
      *v147 = 356;
      *&v147[4] = 2112;
      *&v147[6] = v109;
      _os_log_debug_impl(&dword_1BA7F1000, v75, OS_LOG_TYPE_DEBUG, "%d Unable to validate mount point: %@", buf, 0x12u);
    }

LABEL_69:
  }

  v76 = [(CDRecentVolumeInfo *)v130 cdVolume];
  v77 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
  v78 = [v76 mayContainPurgeableAmount:v77 forService:0];

  v79 = MEMORY[0x1E696AD98];
  if (v78)
  {
    v80 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
    [v5 setObject:v80 forKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
  }

  else
  {
    v80 = [(CDRecentVolumeInfo *)v130 cdVolume];
    v81 = [v79 numberWithDouble:{objc_msgSend(v80, "size") * 0.8}];
    [v5 setObject:v81 forKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
  }

  v6 = v115;
  if (v115)
  {
    v82 = [v115 copy];
    [v5 setObject:v82 forKeyedSubscript:@"CACHE_DELETE_NAME_MAP"];
  }

  v83 = [(CDRecentVolumeInfo *)v130 volume];
  [v5 setObject:v83 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

  v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v114];
  [v5 setObject:v84 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];

  v85 = [v5 copy];
  v86 = CDGetLogHandle("client");
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    v87 = [(CDRecentVolumeInfo *)v130 cdVolume];
    v88 = [v87 mountPoint];
    *buf = 67109634;
    *v147 = 380;
    *&v147[4] = 2114;
    *&v147[6] = v88;
    *&v147[14] = 1024;
    *&v147[16] = a3;
    _os_log_impl(&dword_1BA7F1000, v86, OS_LOG_TYPE_DEFAULT, "%d CDRecentVolumeInfo _recentInfoAtUrgency, volume: %{public}@, urgency: %d, result:", buf, 0x18u);

    v6 = v115;
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v17 = v85;
  v89 = [v17 countByEnumeratingWithState:&v136 objects:v145 count:16];
  if (v89)
  {
    v90 = v89;
    v121 = v5;
    v91 = *v137;
    v124 = *v137;
    do
    {
      v92 = 0;
      v126 = v90;
      do
      {
        if (*v137 != v91)
        {
          objc_enumerationMutation(v17);
        }

        v131 = *(*(&v136 + 1) + 8 * v92);
        v93 = [v131 isEqualToString:@"CACHE_DELETE_NAME_MAP"];
        v94 = CDGetLogHandle("client");
        v95 = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);
        if (v93)
        {
          v128 = v92;
          if (v95)
          {
            *buf = 138543362;
            *v147 = v131;
            _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@: {", buf, 0xCu);
          }

          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v96 = [v17 objectForKeyedSubscript:v131];
          v97 = [v96 countByEnumeratingWithState:&v132 objects:v144 count:16];
          if (v97)
          {
            v98 = v97;
            v99 = *v133;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v133 != v99)
                {
                  objc_enumerationMutation(v96);
                }

                v101 = *(*(&v132 + 1) + 8 * j);
                v102 = CDGetLogHandle("client");
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  [v17 objectForKeyedSubscript:v131];
                  v104 = v103 = v17;
                  v105 = [v104 objectForKeyedSubscript:v101];
                  *buf = 138543618;
                  *v147 = v101;
                  *&v147[8] = 2114;
                  *&v147[10] = v105;
                  _os_log_impl(&dword_1BA7F1000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", buf, 0x16u);

                  v17 = v103;
                }
              }

              v98 = [v96 countByEnumeratingWithState:&v132 objects:v144 count:16];
            }

            while (v98);
          }

          v94 = CDGetLogHandle("client");
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "}", buf, 2u);
          }

          v91 = v124;
          v90 = v126;
          v92 = v128;
        }

        else if (v95)
        {
          v106 = [v17 objectForKeyedSubscript:v131];
          *buf = 138543618;
          *v147 = v131;
          *&v147[8] = 2114;
          *&v147[10] = v106;
          _os_log_impl(&dword_1BA7F1000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", buf, 0x16u);
        }

        ++v92;
      }

      while (v92 != v90);
      v90 = [v17 countByEnumeratingWithState:&v136 objects:v145 count:16];
    }

    while (v90);
    v18 = v17;
    v5 = v121;
    v6 = v115;
  }

  else
  {
    v18 = v17;
  }

LABEL_103:

  v107 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)removeServiceInfo:(id)a3
{
  v4 = a3;
  v5 = [(CDRecentVolumeInfo *)self services];
  [v5 removeObjectForKey:v4];
}

- (BOOL)isEmpty
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v2 = [(CDRecentVolumeInfo *)self services];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__CDRecentVolumeInfo_isEmpty__block_invoke;
  v4[3] = &unk_1E7F026D0;
  v4[4] = &v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __29__CDRecentVolumeInfo_isEmpty__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEmpty];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)log
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CDRecentVolumeInfo *)self timestamp];
    v5 = [(CDRecentVolumeInfo *)self freespace];
    *buf = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "  timestamp: %@, freespace: %@", buf, 0x16u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CDRecentVolumeInfo *)self services];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = [(CDRecentVolumeInfo *)self services];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = CDGetLogHandle("client");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v24 = v12;
          _os_log_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_DEFAULT, "   service: %@", buf, 0xCu);
        }

        [v14 log];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v2 = [(CDRecentVolumeInfo *)self services];
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1];
}

- (BOOL)isStale
{
  v3 = [(CDRecentVolumeInfo *)self timestamp];
  v4 = validateTimestamp(v3, 3600.0);

  v5 = [(CDRecentVolumeInfo *)self volume];
  v6 = [(CDRecentVolumeInfo *)self freespace];
  v7 = validateFreespace(v5, v6, &unk_1F38793B8, 0);

  v8 = [(CDRecentVolumeInfo *)self thresholds];

  v9 = !v7;
  if (!v8)
  {
    v9 = 1;
  }

  if (v4)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

@end