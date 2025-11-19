@interface HMDNaturalLightingCurve
+ (id)logCategory;
+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HMDNaturalLightingCurve)initWithCoder:(id)a3;
- (HMDNaturalLightingCurve)initWithCurve:(id)a3 minimumColorTemperature:(int64_t)a4 maximumColorTemperature:(int64_t)a5;
- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)a3 transitionPoints:(id)a4 minimumBrightness:(int64_t)a5 maximumBrightness:(int64_t)a6 minimumColorTemperature:(int64_t)a7 maximumColorTemperature:(int64_t)a8;
- (id)attributeDescriptions;
- (id)colorTemperatureForBrightness:(int64_t)a3 millisecondsElapsedSinceStartOfDay:(unint64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)a3;
- (unint64_t)checksum;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDNaturalLightingCurve

- (id)transitionPointsWithMillisecondsElapsedSinceStartOfDay:(unint64_t)a3
{
  v4 = self;
  v93 = *MEMORY[0x277D85DE8];
  v5 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v6 = [(HMDNaturalLightingCurve *)v4 minimumBrightness];
  v7 = [(HMDNaturalLightingCurve *)v4 maximumBrightness];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v9)
  {
    v10 = v9;
    v76 = v7;
    v77 = v6;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v85;
    v80 = v4;
    obj = v8;
LABEL_3:
    v15 = 0;
    v16 = v11;
    v78 = v11 + v10;
    v17 = v12;
    v18 = v13;
    while (1)
    {
      v83 = v18;
      if (*v85 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v84 + 1) + 8 * v15);
      v20 = [v19 targetCompletionDuration];
      v21 = [v20 value];
      v12 = [v21 unsignedLongLongValue] + v17;

      if (v12 == a3)
      {
        break;
      }

      v22 = v83;
      if (v17 <= a3 && v12 > a3)
      {
        goto LABEL_15;
      }

      v13 = v19;

      ++v16;
      ++v15;
      v17 = v12;
      v18 = v13;
      if (v10 == v15)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
        v11 = v78;
        v4 = v80;
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v12 = a3;
    v22 = v83;
LABEL_15:
    v23 = v19;
    v8 = obj;

    if (!v23)
    {
      v4 = v80;
      goto LABEL_22;
    }

    v24 = v12 - a3;
    if ((v12 - a3) >= 0)
    {
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count") + 1}];
      if (v12 == a3)
      {
        v26 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_2866283C0];
        v27 = objc_alloc(MEMORY[0x277CFEAA0]);
        v28 = [v23 scale];
        v29 = [v23 offset];
        v30 = [v27 initWithScale:v28 offset:v29 targetCompletionDuration:v26 startDelayDuration:0];

        [v25 addObject:v30];
        for (i = v16 + 1; i < [obj count]; ++i)
        {
          v32 = [obj objectAtIndex:i];
          [v25 addObject:v32];
        }

        if (v16)
        {
          for (j = 1; j <= v16; ++j)
          {
            v59 = [obj objectAtIndex:j];
            [v25 addObject:v59];
          }
        }
      }

      else if (v22)
      {
        v42 = [v23 targetCompletionDuration];
        [v42 value];
        v44 = v43 = v22;
        v45 = [v44 unsignedLongLongValue] - v24;

        v46 = objc_alloc(MEMORY[0x277CFEC98]);
        v47 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
        v48 = [v46 initWithValue:v47];

        v49 = v43;
        v50 = v48;
        v81 = v45;
        v51 = [MEMORY[0x277CFEAA0] transitionPointWithPreviousTransitionPoint:v49 nextTransitionPoint:v23 timeElapsedSincePreviousTransitionPoint:v45 minimumBrightness:v77 maximumBrightness:v76];
        [v25 addObject:?];
        v52 = objc_alloc(MEMORY[0x277CFEAA0]);
        v53 = [v23 scale];
        v54 = [v23 offset];
        v55 = [v52 initWithScale:v53 offset:v54 targetCompletionDuration:v48 startDelayDuration:0];

        v79 = v55;
        [v25 addObject:v55];
        for (k = v16 + 1; k < [obj count]; ++k)
        {
          v57 = [obj objectAtIndex:k];
          [v25 addObject:v57];
        }

        if (v16 >= 2)
        {
          for (m = 1; m != v16; ++m)
          {
            v61 = [obj objectAtIndex:m];
            [v25 addObject:v61];
          }
        }

        v62 = objc_alloc(MEMORY[0x277CFEAA0]);
        v63 = v51;
        v64 = [v51 scale];
        v65 = [v51 offset];
        v66 = objc_alloc(MEMORY[0x277CFEC98]);
        v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v81];
        v68 = [v66 initWithValue:v67];
        v69 = [v62 initWithScale:v64 offset:v65 targetCompletionDuration:v68 startDelayDuration:0];

        [v25 addObject:v69];
        v22 = v83;
      }

      else
      {
        v70 = objc_autoreleasePoolPush();
        v71 = v80;
        v72 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          v73 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v73;
          v90 = 2048;
          v91 = a3;
          _os_log_impl(&dword_2531F8000, v72, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v70);
      }

      v37 = [v25 copy];

      goto LABEL_45;
    }

    v38 = objc_autoreleasePoolPush();
    v39 = v80;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v41;
      v90 = 2048;
      v91 = v12 - a3;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Time to reach next transition point is negative: %lldms", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
  }

  else
  {
    v13 = 0;
LABEL_13:

    v22 = v13;
LABEL_22:
    v33 = objc_autoreleasePoolPush();
    v34 = v4;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v36;
      v90 = 2048;
      v91 = a3;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Next transition point for current time: %llums not found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = MEMORY[0x277CBEBF8];
LABEL_45:

  v74 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)colorTemperatureForBrightness:(int64_t)a3 millisecondsElapsedSinceStartOfDay:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(HMDNaturalLightingCurve *)self transitionPointsWithMillisecondsElapsedSinceStartOfDay:a4];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if ([(HMDNaturalLightingCurve *)self minimumBrightness]> a3)
  {
    v9 = [(HMDNaturalLightingCurve *)self minimumBrightness];
LABEL_7:
    a3 = v9;
    goto LABEL_8;
  }

  if ([(HMDNaturalLightingCurve *)self maximumBrightness]< a3)
  {
    v9 = [(HMDNaturalLightingCurve *)self maximumBrightness];
    goto LABEL_7;
  }

LABEL_8:
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543874;
    v18 = v14;
    v19 = 2048;
    v20 = a4;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Transition point for milliseconds elapsed since start of day %llums is %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "colorTemperatureForBrightness:", a3)}];
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (unint64_t)checksum
{
  v21 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        *data = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")}];
        CC_SHA256_Update(&c, data, 4u);
        LODWORD(v12) = [v8 colorTemperatureForBrightness:{-[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")}];
        CC_SHA256_Update(&c, &v12, 4u);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
  CC_SHA256_Update(&c, &v13, 4u);
  v12 = [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  CC_SHA256_Update(&c, &v12, 8u);
  v11 = [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  CC_SHA256_Update(&c, &v11, 8u);
  CC_SHA256_Final(data, &c);
  result = *data;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)attributeDescriptions
{
  v42[11] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNaturalLightingCurve version](self, "version")}];
  v40 = [v3 initWithName:@"Version" value:v41];
  v42[0] = v40;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")}];
  v38 = [v4 initWithName:@"Minimum Brightness" value:v39];
  v42[1] = v38;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")}];
  v36 = [v5 initWithName:@"Maximum Brightness" value:v37];
  v42[2] = v36;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = MEMORY[0x277CCABB0];
  v35 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v34 = [v7 numberWithUnsignedInteger:{objc_msgSend(v35, "count")}];
  v33 = [v6 initWithName:@"Transition Points Count" value:v34];
  v42[3] = v33;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v32 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v31 = [v32 firstObject];
  v30 = [v8 initWithName:@"Transition Start Point" value:v31];
  v42[4] = v30;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve minimumColorTemperature](self, "minimumColorTemperature")}];
  v28 = [v9 initWithName:@"Minimum Color Temperature" value:v29];
  v42[5] = v28;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDNaturalLightingCurve maximumColorTemperature](self, "maximumColorTemperature")}];
  v11 = [v10 initWithName:@"Maximum Color Temperature" value:v27];
  v42[6] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self, "colorTemperatureNotifyIntervalThresholdInMilliseconds")}];
  v14 = [v12 initWithName:@"Color Temperature Notify Interval Threshold In Milliseconds" value:v13];
  v42[7] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self, "colorTemperatureNotifyValueChangeThreshold")}];
  v17 = [v15 initWithName:@"Color Temperature Notify Value Change Threshold" value:v16];
  v42[8] = v17;
  v18 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds](self, "colorTemperatureUpdateIntervalInMilliseconds")}];
  v20 = [v18 initWithName:@"Color Temperature Update Interval In Milliseconds" value:v19];
  v42[9] = v20;
  v21 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingCurve checksum](self, "checksum")}];
  v23 = [v21 initWithName:@"Transition Checksum" value:v22];
  v42[10] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:11];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMDMutableNaturalLightingCurve allocWithZone:a3];
  v5 = [(HMDNaturalLightingCurve *)self version];
  v6 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [(HMDNaturalLightingCurve *)v4 initWithVersion:v5 transitionPoints:v6 minimumBrightness:[(HMDNaturalLightingCurve *)self minimumBrightness] maximumBrightness:[(HMDNaturalLightingCurve *)self maximumBrightness] minimumColorTemperature:[(HMDNaturalLightingCurve *)self minimumColorTemperature] maximumColorTemperature:[(HMDNaturalLightingCurve *)self maximumColorTemperature]];

  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyIntervalThresholdInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureNotifyValueChangeThreshold:[(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold]];
  [(HMDNaturalLightingCurve *)v7 setColorTemperatureUpdateIntervalInMilliseconds:[(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds]];
  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19, &__block_literal_global_67803);
  }

  v3 = logCategory__hmf_once_v20;

  return v3;
}

uint64_t __38__HMDNaturalLightingCurve_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20;
  logCategory__hmf_once_v20 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (int64_t)colorTemperatureMiredsFromKelvins:(int64_t)a3
{
  if (a3)
  {
    return 1000000 / a3;
  }

  v4 = _HMFPreconditionFailure();
  return +[(HMDNaturalLightingCurve *)v4];
}

- (unint64_t)hash
{
  v3 = [(HMDNaturalLightingCurve *)self version];
  v4 = [(HMDNaturalLightingCurve *)self minimumBrightness]^ v3;
  v5 = v4 ^ [(HMDNaturalLightingCurve *)self maximumBrightness];
  v6 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [v6 count];

  v8 = v5 ^ v7 ^ [(HMDNaturalLightingCurve *)self minimumColorTemperature];
  v9 = [(HMDNaturalLightingCurve *)self maximumColorTemperature];
  v10 = v9 ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyIntervalThresholdInMilliseconds];
  v11 = v10 ^ [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
  return v8 ^ v11 ^ [(HMDNaturalLightingCurve *)self colorTemperatureNotifyValueChangeThreshold];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && (v8 = [v6 version], v8 == -[HMDNaturalLightingCurve version](self, "version")) && (v9 = objc_msgSend(v7, "minimumBrightness"), v9 == -[HMDNaturalLightingCurve minimumBrightness](self, "minimumBrightness")) && (v10 = objc_msgSend(v7, "maximumBrightness"), v10 == -[HMDNaturalLightingCurve maximumBrightness](self, "maximumBrightness")))
  {
    v11 = [v7 transitionPoints];
    v12 = [(HMDNaturalLightingCurve *)self transitionPoints];
    if ([v11 isEqual:v12] && (v13 = objc_msgSend(v7, "minimumColorTemperature"), v13 == -[HMDNaturalLightingCurve minimumColorTemperature](self, "minimumColorTemperature")) && (v14 = objc_msgSend(v7, "maximumColorTemperature"), v14 == -[HMDNaturalLightingCurve maximumColorTemperature](self, "maximumColorTemperature")) && (v15 = objc_msgSend(v7, "colorTemperatureNotifyIntervalThresholdInMilliseconds"), v15 == -[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self, "colorTemperatureNotifyIntervalThresholdInMilliseconds")) && (v16 = objc_msgSend(v7, "colorTemperatureNotifyValueChangeThreshold"), v16 == -[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self, "colorTemperatureNotifyValueChangeThreshold")))
    {
      v17 = [v7 colorTemperatureUpdateIntervalInMilliseconds];
      v18 = v17 == [(HMDNaturalLightingCurve *)self colorTemperatureUpdateIntervalInMilliseconds];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeInteger:-[HMDNaturalLightingCurve version](self forKey:{"version"), @"HNLCurve.vk"}];
  [v4 encodeInteger:-[HMDNaturalLightingCurve minimumBrightness](self forKey:{"minimumBrightness"), @"HNLCurve.mibk"}];
  [v4 encodeInteger:-[HMDNaturalLightingCurve maximumBrightness](self forKey:{"maximumBrightness"), @"HNLCurve.mabk"}];
  [v4 encodeInteger:-[HMDNaturalLightingCurve minimumColorTemperature](self forKey:{"minimumColorTemperature"), @"HNLCurve.mictk"}];
  [v4 encodeInteger:-[HMDNaturalLightingCurve maximumColorTemperature](self forKey:{"maximumColorTemperature"), @"HNLCurve.mactk"}];
  [v4 encodeInteger:-[HMDNaturalLightingCurve colorTemperatureNotifyValueChangeThreshold](self forKey:{"colorTemperatureNotifyValueChangeThreshold"), @"HNLCurve.ctnvctk"}];
  [v4 encodeInt64:-[HMDNaturalLightingCurve colorTemperatureNotifyIntervalThresholdInMilliseconds](self forKey:{"colorTemperatureNotifyIntervalThresholdInMilliseconds"), @"HNLCurve.ctnitk"}];
  [v4 encodeInt64:-[HMDNaturalLightingCurve colorTemperatureUpdateIntervalInMilliseconds](self forKey:{"colorTemperatureUpdateIntervalInMilliseconds"), @"HNLCurve.ctuik"}];
  v5 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(HMDNaturalLightingCurve *)self transitionPoints];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v19 = 0;
        v12 = [v11 serializeWithError:&v19];
        v13 = v19;
        if (!v12)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543874;
            v25 = v17;
            v26 = 2112;
            v27 = v11;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize transition point %@:%@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_13;
        }

        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [v5 copy];
  [v4 encodeObject:v6 forKey:@"HNLCurve.tpk"];
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDNaturalLightingCurve)initWithCoder:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HNLCurve.vk"];
  if (v5 != 1)
  {
    v18 = v5;
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543874;
    v59 = v19;
    v60 = 2048;
    v61 = v18;
    v62 = 2048;
    v63 = 1;
    v20 = "%{public}@Curve version is not equal to (%ld != %ld)";
    v21 = v13;
    v22 = 32;
LABEL_14:
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);

    goto LABEL_25;
  }

  v6 = [v4 decodeIntegerForKey:@"HNLCurve.mabk"];
  if (v6 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v19;
    v60 = 2048;
    v61 = v6;
    v20 = "%{public}@Maximum brightness is less than or equal to 0: %ld";
    v21 = v13;
    v22 = 22;
    goto LABEL_14;
  }

  v7 = [v4 decodeIntegerForKey:@"HNLCurve.mibk"];
  v8 = v7;
  if (v7 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v14;
    v60 = 2048;
    v61 = v8;
    v15 = "%{public}@Minimum brightness is less than or equal to 0: %ld";
LABEL_23:
    v16 = v13;
    v17 = 22;
    goto LABEL_24;
  }

  if (v7 >= v6)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v23;
      v60 = 2048;
      v61 = v8;
      v62 = 2048;
      v63 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Minimum brightness is greater than equal to maximum brightness (%ld:%ld)", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v9 = [v4 decodeIntegerForKey:@"HNLCurve.mictk"];
  if (v9 <= 0)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v14;
    v60 = 2048;
    v61 = v9;
    v15 = "%{public}@Minimum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v10 = [v4 decodeIntegerForKey:@"HNLCurve.mactk"];
  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v59 = v14;
    v60 = 2048;
    v61 = 0;
    v15 = "%{public}@Maximum color temperature is less than or equal to 0: %ld";
    goto LABEL_23;
  }

  v11 = v10;
  if (v9 > v10)
  {
    v12 = objc_autoreleasePoolPush();
    self = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v14;
      v60 = 2048;
      v61 = v9;
      v62 = 2048;
      v63 = v11;
      v15 = "%{public}@Minimum color temperature is greater than maximum color temperature (%ld:%ld)";
      v16 = v13;
      v17 = 32;
LABEL_24:
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_25:

    objc_autoreleasePoolPop(v12);
    v24 = 0;
    goto LABEL_26;
  }

  v46 = v10;
  v27 = MEMORY[0x277CBEB98];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v29 = [v27 setWithArray:v28];

  v30 = [v4 decodeObjectOfClasses:v29 forKey:@"HNLCurve.tpk"];
  if (v30)
  {
    v45 = v9;
    v48 = v29;
    v50 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v47 = v30;
    obj = v30;
    v31 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v53;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v52 + 1) + 8 * i);
          v51 = 0;
          v36 = [MEMORY[0x277CFEAA0] parsedFromData:v35 error:&v51];
          v37 = v51;
          if (!v36)
          {
            v39 = objc_autoreleasePoolPush();
            self = self;
            v40 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = HMFGetLogIdentifier();
              *buf = 138543874;
              v59 = v41;
              v60 = 2112;
              v61 = v35;
              v62 = 2112;
              v63 = v37;
              _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse encoded transition point %@:%@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v39);
            v24 = 0;
            v30 = v47;
            v29 = v48;
            v38 = v50;
            goto LABEL_46;
          }

          [v50 addObject:v36];
        }

        v32 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v38 = v50;
    if ([v50 count])
    {
      self = [(HMDNaturalLightingCurve *)self initWithVersion:1 transitionPoints:v50 minimumBrightness:v8 maximumBrightness:v6 minimumColorTemperature:v45 maximumColorTemperature:v46];
      -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](self, "setColorTemperatureNotifyValueChangeThreshold:", [v4 decodeIntegerForKey:@"HNLCurve.ctnvctk"]);
      -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](self, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [v4 decodeInt64ForKey:@"HNLCurve.ctnitk"]);
      -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](self, "setColorTemperatureUpdateIntervalInMilliseconds:", [v4 decodeInt64ForKey:@"HNLCurve.ctuik"]);
      v24 = self;
    }

    else
    {
      v24 = 0;
    }

    v30 = v47;
    v29 = v48;
LABEL_46:
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    self = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v44;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode transition points", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
    v24 = 0;
  }

LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (HMDNaturalLightingCurve)initWithCurve:(id)a3 minimumColorTemperature:(int64_t)a4 maximumColorTemperature:(int64_t)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CBEB18];
  v9 = [v7 transitionPoints];
  v44 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [v7 transitionPoints];
  v45 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  v10 = 0;
  v11 = 0;
  if (v45)
  {
    v43 = *v47;
    v38 = a5;
    v39 = v7;
    do
    {
      v12 = 0;
      do
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * v12);
        v14 = [v13 colorTemperatureForBrightness:{objc_msgSend(v7, "minimumBrightness")}];
        v15 = v14;
        if (v14 <= a4)
        {
          v16 = a4;
        }

        else
        {
          v16 = v14;
        }

        if (v14 <= a5)
        {
          v17 = v16;
        }

        else
        {
          v17 = a5;
        }

        v18 = [v13 colorTemperatureForBrightness:{objc_msgSend(v7, "maximumBrightness")}];
        if (v18 <= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v18;
        }

        if (v18 <= a5)
        {
          v20 = v19;
        }

        else
        {
          v20 = a5;
        }

        if (v18 > a5 || v18 < a4 || v15 > a5 || v15 < a4)
        {
          v42 = MEMORY[0x277CFEAA0];
          v41 = [v7 minimumBrightness];
          v24 = [v7 maximumBrightness];
          v25 = [v13 targetCompletionDuration];
          v26 = [v25 value];
          v27 = [v26 unsignedLongLongValue];
          v28 = v24;
          a5 = v38;
          v29 = [v42 transitionPointWithMinimumBrightness:v41 minimumBrightnessColorTemperature:v17 maximumBrightness:v28 maximumBrightnessColorTemperature:v20 targetCompletionDuration:v27];

          v7 = v39;
        }

        else
        {
          v29 = [v13 copy];
        }

        [v44 addObject:v29];
        if (v17 >= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v17;
        }

        if (v11 >= v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v11;
        }

        if (v11 <= 0)
        {
          v11 = v30;
        }

        else
        {
          v11 = v31;
        }

        if (v20 <= v17)
        {
          v32 = v17;
        }

        else
        {
          v32 = v20;
        }

        if (v10 <= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v10;
        }

        if (v10 <= 0)
        {
          v10 = v32;
        }

        else
        {
          v10 = v33;
        }

        ++v12;
      }

      while (v45 != v12);
      v45 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v45);
  }

  v34 = -[HMDNaturalLightingCurve initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:](self, "initWithVersion:transitionPoints:minimumBrightness:maximumBrightness:minimumColorTemperature:maximumColorTemperature:", [v7 version], v44, objc_msgSend(v7, "minimumBrightness"), objc_msgSend(v7, "maximumBrightness"), v11, v10);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyIntervalThresholdInMilliseconds:](v34, "setColorTemperatureNotifyIntervalThresholdInMilliseconds:", [v7 colorTemperatureNotifyIntervalThresholdInMilliseconds]);
  -[HMDNaturalLightingCurve setColorTemperatureNotifyValueChangeThreshold:](v34, "setColorTemperatureNotifyValueChangeThreshold:", [v7 colorTemperatureNotifyValueChangeThreshold]);
  -[HMDNaturalLightingCurve setColorTemperatureUpdateIntervalInMilliseconds:](v34, "setColorTemperatureUpdateIntervalInMilliseconds:", [v7 colorTemperatureUpdateIntervalInMilliseconds]);

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (HMDNaturalLightingCurve)initWithVersion:(unint64_t)a3 transitionPoints:(id)a4 minimumBrightness:(int64_t)a5 maximumBrightness:(int64_t)a6 minimumColorTemperature:(int64_t)a7 maximumColorTemperature:(int64_t)a8
{
  v14 = a4;
  v20.receiver = self;
  v20.super_class = HMDNaturalLightingCurve;
  v15 = [(HMDNaturalLightingCurve *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_version = a3;
    v17 = [v14 copy];
    transitionPoints = v16->_transitionPoints;
    v16->_transitionPoints = v17;

    v16->_minimumBrightness = a5;
    v16->_maximumBrightness = a6;
    v16->_minimumColorTemperature = a7;
    v16->_maximumColorTemperature = a8;
  }

  return v16;
}

@end