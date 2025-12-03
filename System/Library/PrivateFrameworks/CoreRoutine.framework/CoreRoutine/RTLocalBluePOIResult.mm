@interface RTLocalBluePOIResult
- (BOOL)isEqual:(id)equal;
- (RTLocalBluePOIResult)initWithCoder:(id)coder;
- (RTLocalBluePOIResult)initWithPOIConfidences:(id)confidences aoiConfidences:(id)aoiConfidences distanceToNearestAOILowerBound:(id)bound referenceLocation:(id)location queryTime:(id)time;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTLocalBluePOIResult

- (RTLocalBluePOIResult)initWithPOIConfidences:(id)confidences aoiConfidences:(id)aoiConfidences distanceToNearestAOILowerBound:(id)bound referenceLocation:(id)location queryTime:(id)time
{
  v58 = *MEMORY[0x1E69E9840];
  confidencesCopy = confidences;
  aoiConfidencesCopy = aoiConfidences;
  boundCopy = bound;
  locationCopy = location;
  timeCopy = time;
  v55.receiver = self;
  v55.super_class = RTLocalBluePOIResult;
  v17 = [(RTLocalBluePOIResult *)&v55 init];
  v18 = v17;
  if (v17)
  {
    v45 = boundCopy;
    objc_storeStrong(&v17->_poiConfidences, confidences);
    objc_storeStrong(&v18->_aoiConfidences, aoiConfidences);
    objc_storeStrong(&v18->_distanceToNearestAOILowerBound, bound);
    objc_storeStrong(&v18->_referenceLocation, location);
    objc_storeStrong(&v18->_queryTime, time);
    v18->_mostConfidentPOI = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v19 = confidencesCopy;
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
          v26 = [v19 objectForKeyedSubscript:{v25, v45, locationCopy}];
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
    v31 = aoiConfidencesCopy;
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

    boundCopy = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  poiConfidences = [(RTLocalBluePOIResult *)self poiConfidences];
  aoiConfidences = [(RTLocalBluePOIResult *)self aoiConfidences];
  referenceLocation = [(RTLocalBluePOIResult *)self referenceLocation];
  queryTime = [(RTLocalBluePOIResult *)self queryTime];
  distanceToNearestAOILowerBound = [(RTLocalBluePOIResult *)self distanceToNearestAOILowerBound];
  v9 = [v3 stringWithFormat:@"poiConfidences, %@, aoiConfidences, %@, referenceLocation, %@, queryTime, %@, distanceToNearestAOILowerBound, %@", poiConfidences, aoiConfidences, referenceLocation, queryTime, distanceToNearestAOILowerBound];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  poiConfidences = self->_poiConfidences;
  aoiConfidences = self->_aoiConfidences;
  distanceToNearestAOILowerBound = self->_distanceToNearestAOILowerBound;
  referenceLocation = self->_referenceLocation;
  queryTime = self->_queryTime;

  return [v4 initWithPOIConfidences:poiConfidences aoiConfidences:aoiConfidences distanceToNearestAOILowerBound:distanceToNearestAOILowerBound referenceLocation:referenceLocation queryTime:queryTime];
}

- (void)encodeWithCoder:(id)coder
{
  poiConfidences = self->_poiConfidences;
  coderCopy = coder;
  [coderCopy encodeObject:poiConfidences forKey:@"poiConfidences"];
  [coderCopy encodeObject:self->_aoiConfidences forKey:@"aoiConfidences"];
  [coderCopy encodeObject:self->_distanceToNearestAOILowerBound forKey:@"distanceToNearestAOILowerBound"];
  [coderCopy encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [coderCopy encodeObject:self->_queryTime forKey:@"queryTime"];
}

- (RTLocalBluePOIResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"poiConfidences"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"aoiConfidences"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distanceToNearestAOILowerBound"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryTime"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      poiConfidences = [(RTLocalBluePOIResult *)self poiConfidences];
      poiConfidences2 = [(RTLocalBluePOIResult *)v5 poiConfidences];
      v8 = [poiConfidences isEqualToDictionary:poiConfidences2];

      aoiConfidences = [(RTLocalBluePOIResult *)self aoiConfidences];
      aoiConfidences2 = [(RTLocalBluePOIResult *)v5 aoiConfidences];
      LOBYTE(poiConfidences) = [aoiConfidences isEqualToDictionary:aoiConfidences2];

      distanceToNearestAOILowerBound = [(RTLocalBluePOIResult *)self distanceToNearestAOILowerBound];
      distanceToNearestAOILowerBound2 = [(RTLocalBluePOIResult *)v5 distanceToNearestAOILowerBound];
      LOBYTE(aoiConfidences) = [distanceToNearestAOILowerBound isEqualToNumber:distanceToNearestAOILowerBound2];

      referenceLocation = [(RTLocalBluePOIResult *)self referenceLocation];
      referenceLocation2 = [(RTLocalBluePOIResult *)v5 referenceLocation];
      v15 = [referenceLocation isEqualToLocation:referenceLocation2];

      queryTime = [(RTLocalBluePOIResult *)self queryTime];
      queryTime2 = [(RTLocalBluePOIResult *)v5 queryTime];

      LOBYTE(v5) = [queryTime isEqual:queryTime2];
      v18 = v8 & poiConfidences & aoiConfidences & v15 & v5;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

@end