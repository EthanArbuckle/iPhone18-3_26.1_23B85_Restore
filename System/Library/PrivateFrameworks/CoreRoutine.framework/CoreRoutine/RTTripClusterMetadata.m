@interface RTTripClusterMetadata
- (BOOL)isEqual:(id)a3;
- (RTTripClusterMetadata)initWithCoder:(id)a3;
- (RTTripClusterMetadata)initWithTripClusterId:(id)a3 dateOfMostRecentTrip:(id)a4 modeOfTransport:(int64_t)a5 countOfTraversal:(int)a6 originLatitude:(double)a7 originLongitude:(double)a8 destinationLatitude:(double)a9 destinationLongitude:(double)a10 averageTripTime:(double)a11 averageTripDistance:(double)a12 minimumTripTime:(double)a13 maximumTripTime:(double)a14 minimumTripDistance:(double)a15 maximumTripDistance:(double)a16 commuteID:(id)a17 isLocked:(BOOL)a18 avgBikeDistance:(double)a19 avgBikeTime:(double)a20 avgWalkDistance:(double)a21 avgWalkTime:(double)a22 bikeTraversalCount:(int)a23 walkTraversalCount:(int)a24 clusterOrder:(signed __int16)a25;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterMetadata

- (RTTripClusterMetadata)initWithTripClusterId:(id)a3 dateOfMostRecentTrip:(id)a4 modeOfTransport:(int64_t)a5 countOfTraversal:(int)a6 originLatitude:(double)a7 originLongitude:(double)a8 destinationLatitude:(double)a9 destinationLongitude:(double)a10 averageTripTime:(double)a11 averageTripDistance:(double)a12 minimumTripTime:(double)a13 maximumTripTime:(double)a14 minimumTripDistance:(double)a15 maximumTripDistance:(double)a16 commuteID:(id)a17 isLocked:(BOOL)a18 avgBikeDistance:(double)a19 avgBikeTime:(double)a20 avgWalkDistance:(double)a21 avgWalkTime:(double)a22 bikeTraversalCount:(int)a23 walkTraversalCount:(int)a24 clusterOrder:(signed __int16)a25
{
  v40 = a3;
  v41 = a4;
  v42 = a17;
  v46.receiver = self;
  v46.super_class = RTTripClusterMetadata;
  v43 = [(RTTripClusterMetadata *)&v46 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clusterID, a3);
    objc_storeStrong(&v44->_dateOfMostRecentTrip, a4);
    v44->_modeOfTransport = a5;
    v44->_countOfTraversal = a6;
    v44->_originLatitude = a7;
    v44->_originLongitude = a8;
    v44->_destinationLatitude = a9;
    v44->_destinationLongitude = a10;
    v44->_averageTripTime = a11;
    v44->_averageTripDistance = a12;
    v44->_minimumTripTime = a13;
    v44->_maximumTripTime = a14;
    v44->_minimumTripDistance = a15;
    v44->_maximumTripDistance = a16;
    objc_storeStrong(&v44->_commuteID, a17);
    v44->_isLocked = a18;
    v44->_avgBikeDistance = a19;
    v44->_avgBikeTime = a20;
    v44->_avgWalkDistance = a21;
    v44->_avgWalkTime = a22;
    v44->_bikeTraversalCount = a23;
    v44->_walkTraversalCount = a24;
    v44->_clusterOrder = a25;
  }

  return v44;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(RTTripClusterMetadata *)self clusterID];
  [v7 encodeObject:v4 forKey:@"clusterId"];

  v5 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
  [v7 encodeObject:v5 forKey:@"mostRecentDate"];

  [v7 encodeInteger:-[RTTripClusterMetadata modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [v7 encodeInt:-[RTTripClusterMetadata countOfTraversal](self forKey:{"countOfTraversal"), @"countOfTravel"}];
  [(RTTripClusterMetadata *)self originLatitude];
  [v7 encodeDouble:@"originLatitude" forKey:?];
  [(RTTripClusterMetadata *)self originLongitude];
  [v7 encodeDouble:@"originLongitude" forKey:?];
  [(RTTripClusterMetadata *)self destinationLatitude];
  [v7 encodeDouble:@"destinationLatitude" forKey:?];
  [(RTTripClusterMetadata *)self destinationLongitude];
  [v7 encodeDouble:@"destinationLongitude" forKey:?];
  [(RTTripClusterMetadata *)self averageTripTime];
  [v7 encodeDouble:@"avgTripTime" forKey:?];
  [(RTTripClusterMetadata *)self averageTripDistance];
  [v7 encodeDouble:@"avgTripDistance" forKey:?];
  [(RTTripClusterMetadata *)self minimumTripTime];
  [v7 encodeDouble:@"minTripTime" forKey:?];
  [(RTTripClusterMetadata *)self minimumTripDistance];
  [v7 encodeDouble:@"minTripDistance" forKey:?];
  [(RTTripClusterMetadata *)self maximumTripTime];
  [v7 encodeDouble:@"maxTripTime" forKey:?];
  [(RTTripClusterMetadata *)self maximumTripDistance];
  [v7 encodeDouble:@"maxTripDistance" forKey:?];
  v6 = [(RTTripClusterMetadata *)self commuteID];
  [v7 encodeObject:v6 forKey:@"commuteID"];

  [v7 encodeBool:-[RTTripClusterMetadata isLocked](self forKey:{"isLocked"), @"isLocked"}];
  [(RTTripClusterMetadata *)self avgBikeTime];
  [v7 encodeDouble:@"avgBikeTime" forKey:?];
  [(RTTripClusterMetadata *)self avgBikeDistance];
  [v7 encodeDouble:@"avgBikeDistance" forKey:?];
  [(RTTripClusterMetadata *)self avgWalkTime];
  [v7 encodeDouble:@"avgWalkTime" forKey:?];
  [(RTTripClusterMetadata *)self avgWalkDistance];
  [v7 encodeDouble:@"avgWalkDistance" forKey:?];
  [v7 encodeInt:-[RTTripClusterMetadata bikeTraversalCount](self forKey:{"bikeTraversalCount"), @"bikeTraversalCount"}];
  [v7 encodeInt:-[RTTripClusterMetadata walkTraversalCount](self forKey:{"walkTraversalCount"), @"walkTraversalCount"}];
  [v7 encodeInt:-[RTTripClusterMetadata clusterOrder](self forKey:{"clusterOrder"), @"clusterOrder"}];
}

- (RTTripClusterMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"clusterId"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentDate"];
  v6 = [v3 decodeIntegerForKey:@"modeOfTransport"];
  v7 = [v3 decodeIntForKey:@"countOfTravel"];
  [v3 decodeDoubleForKey:@"originLatitude"];
  v43 = v8;
  [v3 decodeDoubleForKey:@"originLongitude"];
  v42 = v9;
  [v3 decodeDoubleForKey:@"destinationLatitude"];
  v41 = v10;
  [v3 decodeDoubleForKey:@"destinationLongitude"];
  v40 = v11;
  [v3 decodeDoubleForKey:@"avgTripTime"];
  v39 = v12;
  [v3 decodeDoubleForKey:@"avgTripDistance"];
  v38 = v13;
  [v3 decodeDoubleForKey:@"minTripTime"];
  v15 = v14;
  [v3 decodeDoubleForKey:@"maxTripTime"];
  v17 = v16;
  [v3 decodeDoubleForKey:@"minTripDistance"];
  v19 = v18;
  [v3 decodeDoubleForKey:@"maxTripDistance"];
  v21 = v20;
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"commuteID"];
  v23 = [v3 decodeBoolForKey:@"isLocked"];
  [v3 decodeDoubleForKey:@"avgBikeTime"];
  v25 = v24;
  [v3 decodeDoubleForKey:@"avgBikeDistance"];
  v27 = v26;
  [v3 decodeDoubleForKey:@"avgWalkTime"];
  v29 = v28;
  [v3 decodeDoubleForKey:@"avgWalkDistance"];
  v31 = v30;
  v32 = [v3 decodeIntForKey:@"bikeTraversalCount"];
  v33 = [v3 decodeIntForKey:@"walkTraversalCount"];
  v34 = [v3 decodeIntForKey:@"clusterOrder"];

  LOWORD(v37) = v34;
  v35 = [(RTTripClusterMetadata *)self initWithTripClusterId:v4 dateOfMostRecentTrip:v5 modeOfTransport:v6 countOfTraversal:v7 originLatitude:v22 originLongitude:v23 destinationLatitude:v43 destinationLongitude:v42 averageTripTime:v41 averageTripDistance:v40 minimumTripTime:v39 maximumTripTime:v38 minimumTripDistance:v15 maximumTripDistance:v17 commuteID:v19 isLocked:v21 avgBikeDistance:v27 avgBikeTime:v25 avgWalkDistance:v31 avgWalkTime:v29 bikeTraversalCount:__PAIR64__(v33 walkTraversalCount:v32) clusterOrder:v37];

  return v35;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!(self | v5))
  {
    v7 = 1;
    goto LABEL_3;
  }

  v7 = 0;
  if (self && v5)
  {
    v102 = [v5 isMemberOfClass:objc_opt_class()];
    v9 = [(RTTripClusterMetadata *)self clusterID];
    if (!v9)
    {
      v3 = [v6 clusterID];
      if (!v3)
      {
        v101 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    v10 = [(RTTripClusterMetadata *)self clusterID];
    if (v10)
    {
      v11 = v10;
      v12 = [v6 clusterID];
      if (v12)
      {
        v13 = v12;
        v14 = [(RTTripClusterMetadata *)self clusterID];
        v15 = [v6 clusterID];
        v101 = [v14 isEqual:v15];

        if (!v9)
        {
          goto LABEL_16;
        }

LABEL_17:

        v16 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
        if (!v16)
        {
          v3 = [v6 dateOfMostRecentTrip];
          if (!v3)
          {
            v100 = 1;
LABEL_27:

            goto LABEL_28;
          }
        }

        v17 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
        if (v17)
        {
          v18 = v17;
          v19 = [v6 dateOfMostRecentTrip];
          if (v19)
          {
            v20 = v19;
            v21 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
            v22 = [v6 dateOfMostRecentTrip];
            v100 = [v21 isEqual:v22];

            if (!v16)
            {
              goto LABEL_27;
            }

LABEL_28:

            v99 = [(RTTripClusterMetadata *)self modeOfTransport];
            v98 = [v6 modeOfTransport];
            v97 = [(RTTripClusterMetadata *)self countOfTraversal];
            v96 = [v6 countOfTraversal];
            [(RTTripClusterMetadata *)self originLatitude];
            v95 = v23;
            [v6 originLatitude];
            v94 = v24;
            [(RTTripClusterMetadata *)self originLongitude];
            v93 = v25;
            [v6 originLongitude];
            v92 = v26;
            [(RTTripClusterMetadata *)self destinationLatitude];
            v91 = v27;
            [v6 destinationLatitude];
            v90 = v28;
            [(RTTripClusterMetadata *)self destinationLongitude];
            v89 = v29;
            [v6 destinationLongitude];
            v88 = v30;
            [(RTTripClusterMetadata *)self averageTripTime];
            v87 = v31;
            [v6 averageTripTime];
            v86 = v32;
            [(RTTripClusterMetadata *)self averageTripDistance];
            v85 = v33;
            [v6 averageTripDistance];
            v84 = v34;
            [(RTTripClusterMetadata *)self minimumTripTime];
            v83 = v35;
            [v6 minimumTripTime];
            v82 = v36;
            [(RTTripClusterMetadata *)self maximumTripTime];
            v81 = v37;
            [v6 maximumTripTime];
            v80 = v38;
            [(RTTripClusterMetadata *)self minimumTripDistance];
            v79 = v39;
            [v6 minimumTripDistance];
            v78 = v40;
            [(RTTripClusterMetadata *)self maximumTripDistance];
            v77 = v41;
            [v6 maximumTripDistance];
            v76 = v42;
            v43 = [(RTTripClusterMetadata *)self commuteID];
            if (!v43)
            {
              v3 = [v6 commuteID];
              if (!v3)
              {
                v50 = 1;
LABEL_38:

                goto LABEL_39;
              }
            }

            v44 = [(RTTripClusterMetadata *)self commuteID];
            if (v44)
            {
              v45 = v44;
              v46 = [v6 commuteID];
              if (v46)
              {
                v47 = v46;
                v48 = [(RTTripClusterMetadata *)self commuteID];
                v49 = [v6 commuteID];
                v50 = [v48 isEqual:v49];

                if (!v43)
                {
                  goto LABEL_38;
                }

LABEL_39:

                v51 = [(RTTripClusterMetadata *)self isLocked];
                v52 = [v6 isLocked];
                [(RTTripClusterMetadata *)self avgBikeTime];
                v54 = v53;
                [v6 avgBikeTime];
                v56 = v55;
                [(RTTripClusterMetadata *)self avgBikeDistance];
                v58 = v57;
                [v6 avgBikeDistance];
                v60 = v59;
                [(RTTripClusterMetadata *)self avgWalkTime];
                v62 = v61;
                [v6 avgWalkTime];
                v64 = v63;
                [(RTTripClusterMetadata *)self avgWalkDistance];
                v66 = v65;
                [v6 avgWalkDistance];
                v68 = v67;
                v69 = [(RTTripClusterMetadata *)self bikeTraversalCount];
                v70 = [v6 bikeTraversalCount];
                v71 = [(RTTripClusterMetadata *)self walkTraversalCount];
                v72 = [v6 walkTraversalCount];
                v73 = [(RTTripClusterMetadata *)self clusterOrder];
                v74 = [v6 clusterOrder];
                v7 = 0;
                if ((v102 & v101 & v100) == 1 && v99 == v98 && v97 == v96 && vabdd_f64(v95, v94) < 0.0000001 && vabdd_f64(v93, v92) < 0.0000001 && vabdd_f64(v91, v90) < 0.0000001 && vabdd_f64(v89, v88) < 0.0000001 && vabdd_f64(v87, v86) < 0.0000001 && vabdd_f64(v85, v84) < 0.0000001 && vabdd_f64(v83, v82) < 0.0000001 && vabdd_f64(v81, v80) < 0.0000001 && vabdd_f64(v79, v78) < 0.0000001 && vabdd_f64(v77, v76) < 0.0000001 && v50 && ((v51 ^ v52) & 1) == 0 && vabdd_f64(v54, v56) < 0.0000001 && vabdd_f64(v58, v60) < 0.0000001 && vabdd_f64(v62, v64) < 0.0000001 && vabdd_f64(v66, v68) < 0.0000001 && v69 == v70)
                {
                  v7 = v71 == v72 && v73 == v74;
                }

                goto LABEL_3;
              }
            }

            v50 = 0;
            if (!v43)
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }

        v100 = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    v101 = 0;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_3:

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTTripClusterMetadata *)self clusterID];
  v5 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
  v6 = [(RTTripClusterMetadata *)self modeOfTransport];
  v7 = [(RTTripClusterMetadata *)self countOfTraversal];
  [(RTTripClusterMetadata *)self originLatitude];
  v38 = v8;
  [(RTTripClusterMetadata *)self originLongitude];
  v37 = v9;
  [(RTTripClusterMetadata *)self destinationLatitude];
  v36 = v10;
  [(RTTripClusterMetadata *)self destinationLongitude];
  v35 = v11;
  [(RTTripClusterMetadata *)self averageTripTime];
  v34 = v12;
  [(RTTripClusterMetadata *)self averageTripDistance];
  v33 = v13;
  [(RTTripClusterMetadata *)self minimumTripTime];
  v15 = v14;
  [(RTTripClusterMetadata *)self maximumTripTime];
  v17 = v16;
  [(RTTripClusterMetadata *)self minimumTripDistance];
  v19 = v18;
  [(RTTripClusterMetadata *)self maximumTripDistance];
  v21 = v20;
  v22 = [(RTTripClusterMetadata *)self commuteID];
  v23 = [(RTTripClusterMetadata *)self isLocked];
  [(RTTripClusterMetadata *)self avgBikeTime];
  v25 = v24;
  [(RTTripClusterMetadata *)self avgBikeDistance];
  v27 = v26;
  [(RTTripClusterMetadata *)self avgWalkTime];
  v29 = v28;
  [(RTTripClusterMetadata *)self avgWalkDistance];
  v31 = [v3 stringWithFormat:@"clusterId, %@, mostRecentTripDate, %@, modeOfTransport, %d, countOfTraversal, %d, originLat, %0.6f, originLon, %0.6f, destLat, %0.6f, destLon, %0.6f, avgTripTime, %0.2f, avgTripDistance, %0.2f, minTripTime, %0.2f, maxTripTime, %0.2f, minTripDistance, %0.2f, maxTripDistance, %0.2f, commuteID, %@, isLocked, %d, bikeTime, %0.2f, bikeDist, %02.f, walkTime, %0.2f, walkDist, %0.2f, cntBikeTravel, %d, cntWalkTravel, %d, clusterOrder, %d", v4, v5, v6, v7, v38, v37, v36, v35, v34, v33, v15, v17, v19, v21, v22, v23, v25, v27, v29, v30, -[RTTripClusterMetadata bikeTraversalCount](self, "bikeTraversalCount"), -[RTTripClusterMetadata walkTraversalCount](self, "walkTraversalCount"), -[RTTripClusterMetadata clusterOrder](self, "clusterOrder")];

  return v31;
}

@end