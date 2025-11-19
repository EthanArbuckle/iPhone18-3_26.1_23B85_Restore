@interface HMICameraActivityZone
+ (id)activityZonesFromString:(id)a3 isInclusion:(BOOL)a4;
+ (id)filterEvents:(id)a3 withActivityZones:(id)a4 motionDetection:(id)a5 insetPercentageInclusion:(float)a6 insetPercentageExclusion:(float)a7;
+ (void)generateAndSubmitStats:(id)a3 filteredEvents:(id)a4 motionDetection:(id)a5 activityZones:(id)a6;
+ (void)submitCoreAnalyticsEvent:(id)a3 filteringLevel:(id)a4 numberOfDetectedObjects:(id)a5;
- (BOOL)checkIfObjectIsStaticWithBoundingBox:(CGRect)a3 motionDetection:(id)a4 eventClass:(Class)a5;
- (BOOL)containsEvent:(id)a3 withInsetPercentage:(float)a4;
- (BOOL)containsVectorWithSource:(CGPoint)a3 destination:(CGPoint)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)overlapsWithElipseInsideRect:(CGRect)a3;
- (BOOL)overlapsWithElipseInsideRect:(CGRect)a3 withInsetPercentage:(float)a4;
- (BOOL)saveToJsonActivityZones:(id)a3 motionDetection:(id)a4 videoFragmentUrl:(id)a5 frameId:(id)a6 UUID:(id)a7 detectionID:(id)a8 zoneID:(id)a9;
- (HMICameraActivityZone)initWithCoder:(id)a3;
- (HMICameraActivityZone)initWithPoints:(id)a3 isInclusion:(BOOL)a4;
- (NSString)description;
- (id)jsonReperesentaionOfDetectedObject:(id)a3 motionDetection:(id)a4 eventClass:(id)a5;
- (unint64_t)activityZoneType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMICameraActivityZone

- (HMICameraActivityZone)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"HMIAZ.p"];
  v9 = [v5 decodeBoolForKey:@"HMIAZ.i"];

  v10 = [(HMICameraActivityZone *)self initWithPoints:v8 isInclusion:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HMICameraActivityZone *)self points];
  [v5 encodeObject:v4 forKey:@"HMIAZ.p"];

  [v5 encodeBool:-[HMICameraActivityZone isInclusion](self forKey:{"isInclusion"), @"HMIAZ.i"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMICameraActivityZone *)self points];
      v7 = [(HMICameraActivityZone *)v5 points];
      v8 = [v6 isEqualToArray:v7];

      v9 = [(HMICameraActivityZone *)self isInclusion];
      LOBYTE(v6) = [(HMICameraActivityZone *)v5 isInclusion];

      v10 = v8 & (v9 ^ v6 ^ 1);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMICameraActivityZone *)self points];
  v3 = [v2 hash];

  return v3;
}

- (HMICameraActivityZone)initWithPoints:(id)a3 isInclusion:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMICameraActivityZone;
  v7 = [(HMICameraActivityZone *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    points = v7->_points;
    v7->_points = v8;

    v7->_inclusion = a4;
  }

  return v7;
}

- (unint64_t)activityZoneType
{
  v3 = [(HMICameraActivityZone *)self points];
  if ([v3 count] == 5)
  {
    v4 = [(HMICameraActivityZone *)self isInclusion];

    if (!v4)
    {
      return 2;
    }
  }

  else
  {
  }

  return [(HMICameraActivityZone *)self isInclusion]^ 1;
}

- (BOOL)overlapsWithElipseInsideRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  v63 = x;
  v64 = y;
  v75.origin.x = x;
  v75.origin.y = y;
  v66 = width;
  v67 = height;
  v75.size.width = width;
  v75.size.height = height;
  MidY = CGRectGetMidY(v75);
  v10 = [(HMICameraActivityZone *)self points];
  v11 = HMICreatePathFromPoints(v10);

  v71 = MidX;
  v73.x = MidX;
  v73.y = MidY;
  LOBYTE(v10) = CGPathContainsPoint(v11, 0, v73, 0);
  CGPathRelease(v11);
  if (v10)
  {
    return 1;
  }

  v13 = [(HMICameraActivityZone *)self points];
  v14 = [v13 count];

  if (v14 != 1)
  {
    v15 = v66 * 0.5;
    v16 = height * 0.5;
    v72 = v15 * v15;
    v68 = v16 * v16;
    v65 = v16;
    v17 = 1;
    v69 = MidY;
    do
    {
      v18 = [(HMICameraActivityZone *)self points];
      v19 = [v18 objectAtIndexedSubscript:v17 - 1];
      [v19 point];
      v21 = v20 - v71;
      v22 = [(HMICameraActivityZone *)self points];
      v23 = [v22 objectAtIndexedSubscript:v17 - 1];
      [v23 point];
      v25 = v24 - MidY;

      v26 = [(HMICameraActivityZone *)self points];
      v27 = [v26 objectAtIndexedSubscript:v17];
      [v27 point];
      v29 = v28 - v71;
      v30 = [(HMICameraActivityZone *)self points];
      v31 = [v30 objectAtIndexedSubscript:v17];
      [v31 point];
      v33 = v32 - MidY;

      if (vabdd_f64(v21, v29) >= 0.000001)
      {
        v39 = (v25 - v33) / (v21 - v29);
        v40 = v25 - v39 * v21;
        v41 = v68 + (v72 * (v39 * v39));
        v42 = ((v72 + v72) * v39) * v40;
        v43 = ((v41 * -4.0) * (v72 * ((v40 * v40) - v68))) + (v42 * v42);
        if (v43 < 0.0)
        {
          goto LABEL_33;
        }

        v44 = -v42;
        v45 = sqrt(v43);
        v46 = (v41 + v41);
        v38 = (v45 + v44) / v46;
        v34 = (v44 - v45) / v46;
        v36 = v40 + (v38 * v39);
        v70 = v40 + (v34 * v39);
      }

      else
      {
        v34 = v21;
        if ((v34 * v34) > v72)
        {
          goto LABEL_33;
        }

        v35 = (1.0 - sqrt(((v34 * v34) / v72))) * v65;
        v36 = v35;
        v37 = -v35;
        v70 = v37;
        v38 = v21;
      }

      if (v21 >= v29)
      {
        v47 = v29;
      }

      else
      {
        v47 = v21;
      }

      v48 = v47;
      if (v21 >= v29)
      {
        v49 = v21;
      }

      else
      {
        v49 = v29;
      }

      v50 = v49;
      if (v25 >= v33)
      {
        v51 = v33;
      }

      else
      {
        v51 = v25;
      }

      if (v25 < v33)
      {
        v25 = v33;
      }

      v52 = HMILessThanOrEqualWithAccuracy(v38, v50, 0.001) && HMIGreaterThanOrEqualWithAccuracy(v38, v48, 0.001);
      v53 = v25;
      v54 = HMILessThanOrEqualWithAccuracy(v36, v53, 0.001);
      if (v54)
      {
        v55 = v51;
        v54 = HMIGreaterThanOrEqualWithAccuracy(v36, v55, 0.001);
      }

      MidY = v69;
      if (v54 && v52)
      {
        return 1;
      }

      v56 = HMILessThanOrEqualWithAccuracy(v34, v50, 0.001) && HMIGreaterThanOrEqualWithAccuracy(v34, v48, 0.001);
      v57 = HMILessThanOrEqualWithAccuracy(v70, v53, 0.001);
      if (v57)
      {
        v58 = v51;
        v57 = HMIGreaterThanOrEqualWithAccuracy(v70, v58, 0.001);
      }

      if (v57 && v56)
      {
        return 1;
      }

LABEL_33:
      ++v17;
    }

    while (v14 != v17);
  }

  v76.origin.x = v63;
  v76.origin.y = v64;
  v76.size.width = v66;
  v76.size.height = v67;
  v59 = CGPathCreateWithRect(v76, 0);
  v60 = [(HMICameraActivityZone *)self points];
  v61 = [v60 objectAtIndexedSubscript:0];
  [v61 point];
  v62 = CGPathContainsPoint(v59, 0, v74, 0);

  CGPathRelease(v59);
  return v62;
}

- (BOOL)overlapsWithElipseInsideRect:(CGRect)a3 withInsetPercentage:(float)a4
{
  v5 = HMICGRectScaleAroundCenter(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a4);

  return [(HMICameraActivityZone *)self overlapsWithElipseInsideRect:v5];
}

- (NSString)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@", objc_opt_class()];
  [v3 appendFormat:@" isInclusion:%d ", -[HMICameraActivityZone isInclusion](self, "isInclusion")];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(HMICameraActivityZone *)self points];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@" %@", *(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)jsonReperesentaionOfDetectedObject:(id)a3 motionDetection:(id)a4 eventClass:(id)a5
{
  v55[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(HMICameraActivityZone *)self activityZoneType])
  {
    v13 = 0.21;
    LODWORD(v12) = 1045891645;
    v14 = [(HMICameraActivityZone *)self containsEvent:v8 withInsetPercentage:v12];
  }

  else
  {
    [v8 boundingBox];
    v13 = 0.16;
    if ([HMICameraActivityZone overlapsWithElipseInsideRect:"overlapsWithElipseInsideRect:withInsetPercentage:" withInsetPercentage:?])
    {
      [v8 boundingBox];
      v14 = [(HMICameraActivityZone *)self checkIfObjectIsStaticWithBoundingBox:v9 motionDetection:objc_opt_class() eventClass:v15, v16, v17, v18]^ 1;
    }

    else
    {
      v14 = 0;
    }
  }

  [v8 boundingBox];
  v23 = HMICGRectScaleAroundCenter(v19, v20, v21, v22, v13);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = objc_opt_class();
  if (v30 == objc_opt_class() && [(HMICameraActivityZone *)self activityZoneType]== 2)
  {
    v23 = HMICGRectDivideAlongHeight(v23, v25, v27, v29, 0.7);
    v25 = v31;
    v27 = v32;
    v29 = v33;
  }

  v55[0] = v10;
  v54[0] = @"class-label";
  v54[1] = @"coordinates";
  v58.origin.x = v23;
  v58.origin.y = v25;
  v58.size.width = v27;
  v58.size.height = v29;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v58);
  v55[1] = DictionaryRepresentation;
  v54[2] = @"overlap";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  v55[2] = v35;
  v54[3] = @"inclusion";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMICameraActivityZone isInclusion](self, "isInclusion")}];
  v55[3] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  [v11 addObject:v37];

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = [(HMICameraActivityZone *)self points];
  v40 = [v39 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v48;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(&v47 + 1) + 8 * i) point];
        v44 = CGPointCreateDictionaryRepresentation(v57);
        [v38 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v41);
  }

  v51 = @"activityZone";
  v52 = v38;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [v11 addObject:v45];

  return v11;
}

- (BOOL)containsEvent:(id)a3 withInsetPercentage:(float)a4
{
  v6 = a3;
  [v6 boundingBox];
  v11 = HMICGRectScaleAroundCenter(v7, v8, v9, v10, a4);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = objc_opt_class();

  if (v18 == objc_opt_class() && [(HMICameraActivityZone *)self activityZoneType]== 2)
  {
    v11 = HMICGRectDivideAlongHeight(v11, v13, v15, v17, 0.7);
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  v22 = [(HMICameraActivityZone *)self points];
  v23 = HMICreatePathFromPoints(v22);

  v28.x = v11;
  v28.y = v13;
  if (CGPathContainsPoint(v23, 0, v28, 0) && (v24 = v15 + v11, v29.x = v24, v29.y = v13, CGPathContainsPoint(v23, 0, v29, 0)) && (v25 = v17 + v13, v30.x = v24, v30.y = v25, CGPathContainsPoint(v23, 0, v30, 0)))
  {
    v31.x = v11;
    v31.y = v25;
    v26 = CGPathContainsPoint(v23, 0, v31, 0);
  }

  else
  {
    v26 = 0;
  }

  CGPathRelease(v23);
  return v26;
}

- (BOOL)saveToJsonActivityZones:(id)a3 motionDetection:(id)a4 videoFragmentUrl:(id)a5 frameId:(id)a6 UUID:(id)a7 detectionID:(id)a8 zoneID:(id)a9
{
  v75 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v67 = a8;
  v20 = a9;
  v66 = [HMIVideoAnalyzerEvent shortNameForEventClass:objc_opt_class()];
  v21 = [v17 absoluteString];
  LODWORD(a7) = [v21 hasPrefix:@"HKD://"];

  v63 = v19;
  v61 = v17;
  if (a7)
  {
    v22 = v19;
  }

  else
  {
    v23 = [v17 lastPathComponent];
    v22 = [v23 stringByDeletingPathExtension];
  }

  v64 = v18;
  v62 = v22;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-%@.json", v22, v18, v20, v67];
  v25 = MEMORY[0x277CCACA8];
  v26 = NSTemporaryDirectory();
  v27 = [v25 stringWithFormat:@"%@/%@", v26, @"analyzed-video-frames"];

  v28 = [MEMORY[0x277CCAA00] defaultManager];
  v70 = 0;
  v29 = [v28 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v70];
  v30 = v70;

  v65 = v16;
  if (v29)
  {
    v58 = v24;
    v59 = v20;
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/activityzone-%@", v27, v24];
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v72 = v35;
      v73 = 2112;
      v74 = v31;
      _os_log_impl(&dword_22D12F000, v34, OS_LOG_TYPE_INFO, "%{public}@Activity zone file path:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v60 = v15;
    v36 = [(HMICameraActivityZone *)v33 jsonReperesentaionOfDetectedObject:v15 motionDetection:v16 eventClass:v66];
    v69 = v30;
    v37 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v36 options:1 error:&v69];
    v38 = v69;

    if (v37)
    {
      v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v37 encoding:4];
      v40 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
      v68 = v38;
      v41 = [v39 writeToURL:v40 atomically:1 encoding:4 error:&v68];
      v42 = v68;

      if ((v41 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v43 = v33;
        v44 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543618;
          v72 = v56;
          v73 = 2112;
          v74 = v42;
          _os_log_impl(&dword_22D12F000, v44, OS_LOG_TYPE_ERROR, "%{public}@Error writing activity zone results JSON to file: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
      }

      v38 = v42;
    }

    else
    {
      v51 = objc_autoreleasePoolPush();
      v52 = v33;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v54;
        v73 = 2112;
        v74 = v38;
        _os_log_impl(&dword_22D12F000, v53, OS_LOG_TYPE_ERROR, "%{public}@Error converting activity zone results to JSON: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v51);
      v41 = 0;
    }

    v30 = v38;
    v20 = v59;
    v15 = v60;
    v50 = v63;
    v24 = v58;
  }

  else
  {
    v45 = objc_autoreleasePoolPush();
    v46 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v49 = v48 = v20;
      *buf = 138543618;
      v72 = v49;
      v73 = 2112;
      v74 = v30;
      _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_ERROR, "%{public}@Error creating activity zone result directory: %@", buf, 0x16u);

      v20 = v48;
    }

    objc_autoreleasePoolPop(v45);
    v41 = 0;
    v50 = v63;
  }

  return v41;
}

- (BOOL)checkIfObjectIsStaticWithBoundingBox:(CGRect)a3 motionDetection:(id)a4 eventClass:(Class)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v55 = *MEMORY[0x277D85DE8];
  v11 = a4;
  if (objc_opt_class() != a5)
  {
    goto LABEL_25;
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [(HMICameraActivityZone *)self points];
  v14 = HMICreatePathFromPoints(v13);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v15 = [v11 motionVectors];
  v16 = [v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        [v20 target];
        if (CGPathContainsPoint(v14, 0, v56, 0))
        {
          [v12 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v17);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    v25 = 0.0;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v41 + 1) + 8 * j);
        [v27 target];
        v57.x = v28;
        v57.y = v29;
        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = height;
        if (CGRectContainsPoint(v58, v57))
        {
          [v27 motion];
          v31 = v30;
          [v27 motion];
          v25 = hypot(v31, v32) + v25;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v23);
    v33 = v25;
  }

  else
  {
    v33 = 0.0;
  }

  CGPathRelease(v14);
  v34 = v33 / (height * width + 0.00000011920929);
  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v38;
    v51 = 2048;
    v52 = v34;
    _os_log_impl(&dword_22D12F000, v37, OS_LOG_TYPE_DEBUG, "%{public}@motionScore %f", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  if (v34 < 1.0)
  {
    v39 = 1;
  }

  else
  {
LABEL_25:
    v39 = 0;
  }

  return v39;
}

- (BOOL)containsVectorWithSource:(CGPoint)a3 destination:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [(HMICameraActivityZone *)self points];
  v9 = HMICreatePathFromPoints(v8);

  v12.x = v7;
  v12.y = v6;
  v10 = 0;
  if (CGPathContainsPoint(v9, 0, v12, 0))
  {
    v13.x = x;
    v13.y = y;
    v10 = CGPathContainsPoint(v9, 0, v13, 0);
  }

  CGPathRelease(v9);
  return v10;
}

+ (id)filterEvents:(id)a3 withActivityZones:(id)a4 motionDetection:(id)a5 insetPercentageInclusion:(float)a6 insetPercentageExclusion:(float)a7
{
  v93 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([v12 count])
  {
    v14 = [v12 firstObject];
    v15 = [v14 isInclusion];

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __122__HMICameraActivityZone_filterEvents_withActivityZones_motionDetection_insetPercentageInclusion_insetPercentageExclusion___block_invoke;
    v78[3] = &__block_descriptor_33_e31_B16__0__HMICameraActivityZone_8l;
    v59 = v15;
    v79 = v15;
    [v12 na_all:v78];
    v58 = [MEMORY[0x277CBEB58] set];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v56 = v11;
    obj = v11;
    v61 = v12;
    v63 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
    if (v63)
    {
      v62 = *v75;
      do
      {
        for (i = 0; i != v63; i = i + 1)
        {
          if (*v75 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v74 + 1) + 8 * i);
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v18 = v12;
          v19 = [v18 countByEnumeratingWithState:&v70 objects:v91 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v71;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v71 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v70 + 1) + 8 * j);
                if ([v23 activityZoneType])
                {
                  *&v24 = a7;
                  if ([v23 containsEvent:v17 withInsetPercentage:v24])
                  {
                    v29 = objc_autoreleasePoolPush();
                    v30 = a1;
                    v31 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                    {
                      v33 = HMFGetLogIdentifier();
                      v34 = objc_opt_class();
                      [v17 boundingBox];
                      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v95);
                      *buf = 138544386;
                      v82 = v33;
                      v83 = 2112;
                      v84 = v23;
                      v85 = 2112;
                      v86 = v34;
                      v87 = 2112;
                      v88 = *&DictionaryRepresentation;
                      v89 = 2048;
                      v90 = a7;
                      _os_log_impl(&dword_22D12F000, v31, OS_LOG_TYPE_INFO, "%{public}@Exclusion zone:%@ intersecting with:(%@) Object coordinate %@ insetThreshold %f", buf, 0x34u);
                    }

                    objc_autoreleasePoolPop(v29);
                    v12 = v61;
                    goto LABEL_28;
                  }
                }

                else
                {
                  [v17 boundingBox];
                  if ([v23 overlapsWithElipseInsideRect:? withInsetPercentage:?])
                  {
                    [v17 boundingBox];
                    if (([v23 checkIfObjectIsStaticWithBoundingBox:v13 motionDetection:objc_opt_class() eventClass:{v25, v26, v27, v28}] & 1) == 0)
                    {
                      v36 = objc_autoreleasePoolPush();
                      v37 = a1;
                      v38 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v39 = v57 = v36;
                        v40 = objc_opt_class();
                        [v17 boundingBox];
                        v41 = CGRectCreateDictionaryRepresentation(v96);
                        *buf = 138544386;
                        v82 = v39;
                        v83 = 2112;
                        v84 = v23;
                        v85 = 2112;
                        v86 = v40;
                        v87 = 2112;
                        v88 = *&v41;
                        v89 = 2048;
                        v90 = a6;
                        _os_log_impl(&dword_22D12F000, v38, OS_LOG_TYPE_INFO, "%{public}@Inclusion zone:%@ intersecting with:(%@) Object coordinate %@ insetThreshold %f", buf, 0x34u);

                        v36 = v57;
                      }

                      objc_autoreleasePoolPop(v36);
                      v12 = v61;
                      goto LABEL_27;
                    }
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v70 objects:v91 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          if ((v59 & 1) == 0)
          {
LABEL_27:
            [v58 addObject:{v17, v56}];
          }

LABEL_28:
          ;
        }

        v63 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
      }

      while (v63);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = v58;
    v42 = [v64 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v67;
      if (v59)
      {
        v45 = a6;
      }

      else
      {
        v45 = a7;
      }

      v46 = v45;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v67 != v44)
          {
            objc_enumerationMutation(v64);
          }

          v48 = *(*(&v66 + 1) + 8 * k);
          v49 = objc_autoreleasePoolPush();
          v50 = a1;
          v51 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v52 = HMFGetLogIdentifier();
            v53 = objc_opt_class();
            [v48 boundingBox];
            v54 = CGRectCreateDictionaryRepresentation(v97);
            *buf = 138544130;
            v82 = v52;
            v83 = 2112;
            v84 = v53;
            v85 = 2112;
            v86 = v54;
            v87 = 2048;
            v88 = v46;
            _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_INFO, "%{public}@Events after activity zone filtering:(%@) Object coordinate %@ insetPercentage %f", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v49);
        }

        v43 = [v64 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v43);
    }

    v11 = v56;
    v12 = v61;
  }

  else
  {
    v64 = v11;
  }

  return v64;
}

+ (id)activityZonesFromString:(id)a3 isInclusion:(BOOL)a4
{
  v31 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"{}"];
  v29 = v4;
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v34)
  {
    v33 = *v41;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        if ([v8 length])
        {
          v35 = i;
          v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"()"];
          v10 = [v8 componentsSeparatedByCharactersInSet:v9];

          v11 = [MEMORY[0x277CBEB18] array];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v37;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v37 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v36 + 1) + 8 * j);
                if ([v17 length])
                {
                  v18 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
                  v19 = [v17 componentsSeparatedByCharactersInSet:v18];

                  v20 = [HMIPoint alloc];
                  v21 = [v19 objectAtIndexedSubscript:0];
                  [v21 doubleValue];
                  v23 = v22;
                  v24 = [v19 objectAtIndexedSubscript:1];
                  [v24 doubleValue];
                  v26 = [(HMIPoint *)v20 initWithPoint:v23, v25];

                  [v11 addObject:v26];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v36 objects:v44 count:16];
            }

            while (v14);
          }

          v27 = [[HMICameraActivityZone alloc] initWithPoints:v11 isInclusion:v31];
          [v32 addObject:v27];

          i = v35;
        }
      }

      v34 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v34);
  }

  return v32;
}

+ (void)submitCoreAnalyticsEvent:(id)a3 filteringLevel:(id)a4 numberOfDetectedObjects:(id)a5
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 dictionary];
  [v11 setObject:v10 forKeyedSubscript:@"zoneType"];

  [v11 setObject:v9 forKeyedSubscript:@"filteringLevel"];
  [v11 setObject:v8 forKeyedSubscript:@"numDetectedObjects"];

  v13 = v11;
  v12 = v11;
  AnalyticsSendEventLazy();
}

+ (void)generateAndSubmitStats:(id)a3 filteredEvents:(id)a4 motionDetection:(id)a5 activityZones:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 firstObject];
  v15 = [v14 isInclusion];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  if (v15)
  {
    v17 = @"inclusion";
    [a1 submitCoreAnalyticsEvent:@"inclusion" filteringLevel:@"noFiltering" numberOfDetectedObjects:v16];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v12 count];

    v20 = [v18 numberWithUnsignedInteger:v19];
    [a1 submitCoreAnalyticsEvent:@"inclusion" filteringLevel:@"resize_0" numberOfDetectedObjects:v20];

    LODWORD(v21) = 1028443341;
    v22 = [a1 filterEvents:v13 withActivityZones:v10 motionDetection:v11 insetPercentageInclusion:v21 insetPercentageExclusion:0.0];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    [a1 submitCoreAnalyticsEvent:@"inclusion" filteringLevel:@"resize_10" numberOfDetectedObjects:v23];

    LODWORD(v24) = 1036831949;
    v34 = [a1 filterEvents:v13 withActivityZones:v10 motionDetection:v11 insetPercentageInclusion:v24 insetPercentageExclusion:0.0];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
    v26 = @"resize_20";
  }

  else
  {
    v17 = @"exclusion";
    [a1 submitCoreAnalyticsEvent:@"exclusion" filteringLevel:@"noFiltering" numberOfDetectedObjects:v16];

    v27 = MEMORY[0x277CCABB0];
    v28 = [v12 count];

    v29 = [v27 numberWithUnsignedInteger:v28];
    [a1 submitCoreAnalyticsEvent:@"exclusion" filteringLevel:@"resize_20" numberOfDetectedObjects:v29];

    LODWORD(v30) = 1040522936;
    v31 = [a1 filterEvents:v13 withActivityZones:v10 motionDetection:v11 insetPercentageInclusion:0.0 insetPercentageExclusion:v30];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "count")}];
    [a1 submitCoreAnalyticsEvent:@"exclusion" filteringLevel:@"resize_26" numberOfDetectedObjects:v32];

    LODWORD(v33) = 1043878380;
    v34 = [a1 filterEvents:v13 withActivityZones:v10 motionDetection:v11 insetPercentageInclusion:0.0 insetPercentageExclusion:v33];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
    v26 = @"resize_36";
  }

  [a1 submitCoreAnalyticsEvent:v17 filteringLevel:v26 numberOfDetectedObjects:v25];
}

@end