@interface RTLocalBluePOIResult
- (BOOL)isEqual:(id)a3;
- (RTLocalBluePOIResult)initWithCoder:(id)a3;
- (RTLocalBluePOIResult)initWithPOIConfidences:(id)a3 aoiConfidences:(id)a4 distanceToNearestAOILowerBound:(id)a5 referenceLocation:(id)a6 queryTime:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTLocalBluePOIResult

- (RTLocalBluePOIResult)initWithPOIConfidences:(id)a3 aoiConfidences:(id)a4 distanceToNearestAOILowerBound:(id)a5 referenceLocation:(id)a6 queryTime:(id)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v46 = a6;
  v16 = a7;
  v55.receiver = self;
  v55.super_class = RTLocalBluePOIResult;
  v17 = [(RTLocalBluePOIResult *)&v55 init];
  v18 = v17;
  if (v17)
  {
    v45 = v15;
    objc_storeStrong(&v17->_poiConfidences, a3);
    objc_storeStrong(&v18->_aoiConfidences, a4);
    objc_storeStrong(&v18->_distanceToNearestAOILowerBound, a5);
    objc_storeStrong(&v18->_referenceLocation, a6);
    objc_storeStrong(&v18->_queryTime, a7);
    v18->_mostConfidentPOI = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v52;
      v23 = 0.0;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          v26 = [v19 objectForKeyedSubscript:{v25, v45, v46}];
          [v26 doubleValue];
          v28 = v27;

          if (v28 > v23)
          {
            v18->_mostConfidentPOI = [v25 unsignedIntegerValue];
            v29 = [v19 objectForKeyedSubscript:v25];
            [v29 doubleValue];
            v23 = v30;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v21);
    }

    v18->_mostConfidentAOI = 0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = v14;
    v32 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v48;
      v35 = 0.0;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v47 + 1) + 8 * j);
          v38 = [v31 objectForKeyedSubscript:{v37, v45}];
          [v38 doubleValue];
          v40 = v39;

          if (v40 > v35)
          {
            v18->_mostConfidentAOI = [v37 unsignedIntegerValue];
            v41 = [v31 objectForKeyedSubscript:v37];
            [v41 doubleValue];
            v35 = v42;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v33);
    }

    v15 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTLocalBluePOIResult *)self poiConfidences];
  v5 = [(RTLocalBluePOIResult *)self aoiConfidences];
  v6 = [(RTLocalBluePOIResult *)self referenceLocation];
  v7 = [(RTLocalBluePOIResult *)self queryTime];
  v8 = [(RTLocalBluePOIResult *)self distanceToNearestAOILowerBound];
  v9 = [v3 stringWithFormat:@"poiConfidences, %@, aoiConfidences, %@, referenceLocation, %@, queryTime, %@, distanceToNearestAOILowerBound, %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  poiConfidences = self->_poiConfidences;
  aoiConfidences = self->_aoiConfidences;
  distanceToNearestAOILowerBound = self->_distanceToNearestAOILowerBound;
  referenceLocation = self->_referenceLocation;
  queryTime = self->_queryTime;

  return [v4 initWithPOIConfidences:poiConfidences aoiConfidences:aoiConfidences distanceToNearestAOILowerBound:distanceToNearestAOILowerBound referenceLocation:referenceLocation queryTime:queryTime];
}

- (void)encodeWithCoder:(id)a3
{
  poiConfidences = self->_poiConfidences;
  v5 = a3;
  [v5 encodeObject:poiConfidences forKey:@"poiConfidences"];
  [v5 encodeObject:self->_aoiConfidences forKey:@"aoiConfidences"];
  [v5 encodeObject:self->_distanceToNearestAOILowerBound forKey:@"distanceToNearestAOILowerBound"];
  [v5 encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [v5 encodeObject:self->_queryTime forKey:@"queryTime"];
}

- (RTLocalBluePOIResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"poiConfidences"];
  v7 = objc_opt_class();
  v8 = [v4 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"aoiConfidences"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distanceToNearestAOILowerBound"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryTime"];

  v12 = [(RTLocalBluePOIResult *)self initWithPOIConfidences:v6 aoiConfidences:v8 distanceToNearestAOILowerBound:v9 referenceLocation:v10 queryTime:v11];
  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_poiConfidences hash];
  v4 = [(NSDictionary *)self->_aoiConfidences hash]^ v3;
  v5 = [(NSNumber *)self->_distanceToNearestAOILowerBound hash];
  v6 = v4 ^ v5 ^ [(RTLocation *)self->_referenceLocation hash];
  return v6 ^ [(NSDate *)self->_queryTime hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTLocalBluePOIResult *)self poiConfidences];
      v7 = [(RTLocalBluePOIResult *)v5 poiConfidences];
      v8 = [v6 isEqualToDictionary:v7];

      v9 = [(RTLocalBluePOIResult *)self aoiConfidences];
      v10 = [(RTLocalBluePOIResult *)v5 aoiConfidences];
      LOBYTE(v6) = [v9 isEqualToDictionary:v10];

      v11 = [(RTLocalBluePOIResult *)self distanceToNearestAOILowerBound];
      v12 = [(RTLocalBluePOIResult *)v5 distanceToNearestAOILowerBound];
      LOBYTE(v9) = [v11 isEqualToNumber:v12];

      v13 = [(RTLocalBluePOIResult *)self referenceLocation];
      v14 = [(RTLocalBluePOIResult *)v5 referenceLocation];
      v15 = [v13 isEqualToLocation:v14];

      v16 = [(RTLocalBluePOIResult *)self queryTime];
      v17 = [(RTLocalBluePOIResult *)v5 queryTime];

      LOBYTE(v5) = [v16 isEqual:v17];
      v18 = v8 & v6 & v9 & v15 & v5;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

@end