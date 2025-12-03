@interface RTTripClusterMetadata
- (BOOL)isEqual:(id)equal;
- (RTTripClusterMetadata)initWithCoder:(id)coder;
- (RTTripClusterMetadata)initWithTripClusterId:(id)id dateOfMostRecentTrip:(id)trip modeOfTransport:(int64_t)transport countOfTraversal:(int)traversal originLatitude:(double)latitude originLongitude:(double)longitude destinationLatitude:(double)destinationLatitude destinationLongitude:(double)self0 averageTripTime:(double)self1 averageTripDistance:(double)self2 minimumTripTime:(double)self3 maximumTripTime:(double)self4 minimumTripDistance:(double)self5 maximumTripDistance:(double)self6 commuteID:(id)self7 isLocked:(BOOL)self8 avgBikeDistance:(double)self9 avgBikeTime:(double)bikeTime avgWalkDistance:(double)walkDistance avgWalkTime:(double)walkTime bikeTraversalCount:(int)count walkTraversalCount:(int)traversalCount clusterOrder:(signed __int16)order;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterMetadata

- (RTTripClusterMetadata)initWithTripClusterId:(id)id dateOfMostRecentTrip:(id)trip modeOfTransport:(int64_t)transport countOfTraversal:(int)traversal originLatitude:(double)latitude originLongitude:(double)longitude destinationLatitude:(double)destinationLatitude destinationLongitude:(double)self0 averageTripTime:(double)self1 averageTripDistance:(double)self2 minimumTripTime:(double)self3 maximumTripTime:(double)self4 minimumTripDistance:(double)self5 maximumTripDistance:(double)self6 commuteID:(id)self7 isLocked:(BOOL)self8 avgBikeDistance:(double)self9 avgBikeTime:(double)bikeTime avgWalkDistance:(double)walkDistance avgWalkTime:(double)walkTime bikeTraversalCount:(int)count walkTraversalCount:(int)traversalCount clusterOrder:(signed __int16)order
{
  idCopy = id;
  tripCopy = trip;
  dCopy = d;
  v46.receiver = self;
  v46.super_class = RTTripClusterMetadata;
  v43 = [(RTTripClusterMetadata *)&v46 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clusterID, id);
    objc_storeStrong(&v44->_dateOfMostRecentTrip, trip);
    v44->_modeOfTransport = transport;
    v44->_countOfTraversal = traversal;
    v44->_originLatitude = latitude;
    v44->_originLongitude = longitude;
    v44->_destinationLatitude = destinationLatitude;
    v44->_destinationLongitude = destinationLongitude;
    v44->_averageTripTime = time;
    v44->_averageTripDistance = distance;
    v44->_minimumTripTime = tripTime;
    v44->_maximumTripTime = maximumTripTime;
    v44->_minimumTripDistance = tripDistance;
    v44->_maximumTripDistance = maximumTripDistance;
    objc_storeStrong(&v44->_commuteID, d);
    v44->_isLocked = locked;
    v44->_avgBikeDistance = bikeDistance;
    v44->_avgBikeTime = bikeTime;
    v44->_avgWalkDistance = walkDistance;
    v44->_avgWalkTime = walkTime;
    v44->_bikeTraversalCount = count;
    v44->_walkTraversalCount = traversalCount;
    v44->_clusterOrder = order;
  }

  return v44;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripClusterMetadata *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterId"];

  dateOfMostRecentTrip = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
  [coderCopy encodeObject:dateOfMostRecentTrip forKey:@"mostRecentDate"];

  [coderCopy encodeInteger:-[RTTripClusterMetadata modeOfTransport](self forKey:{"modeOfTransport"), @"modeOfTransport"}];
  [coderCopy encodeInt:-[RTTripClusterMetadata countOfTraversal](self forKey:{"countOfTraversal"), @"countOfTravel"}];
  [(RTTripClusterMetadata *)self originLatitude];
  [coderCopy encodeDouble:@"originLatitude" forKey:?];
  [(RTTripClusterMetadata *)self originLongitude];
  [coderCopy encodeDouble:@"originLongitude" forKey:?];
  [(RTTripClusterMetadata *)self destinationLatitude];
  [coderCopy encodeDouble:@"destinationLatitude" forKey:?];
  [(RTTripClusterMetadata *)self destinationLongitude];
  [coderCopy encodeDouble:@"destinationLongitude" forKey:?];
  [(RTTripClusterMetadata *)self averageTripTime];
  [coderCopy encodeDouble:@"avgTripTime" forKey:?];
  [(RTTripClusterMetadata *)self averageTripDistance];
  [coderCopy encodeDouble:@"avgTripDistance" forKey:?];
  [(RTTripClusterMetadata *)self minimumTripTime];
  [coderCopy encodeDouble:@"minTripTime" forKey:?];
  [(RTTripClusterMetadata *)self minimumTripDistance];
  [coderCopy encodeDouble:@"minTripDistance" forKey:?];
  [(RTTripClusterMetadata *)self maximumTripTime];
  [coderCopy encodeDouble:@"maxTripTime" forKey:?];
  [(RTTripClusterMetadata *)self maximumTripDistance];
  [coderCopy encodeDouble:@"maxTripDistance" forKey:?];
  commuteID = [(RTTripClusterMetadata *)self commuteID];
  [coderCopy encodeObject:commuteID forKey:@"commuteID"];

  [coderCopy encodeBool:-[RTTripClusterMetadata isLocked](self forKey:{"isLocked"), @"isLocked"}];
  [(RTTripClusterMetadata *)self avgBikeTime];
  [coderCopy encodeDouble:@"avgBikeTime" forKey:?];
  [(RTTripClusterMetadata *)self avgBikeDistance];
  [coderCopy encodeDouble:@"avgBikeDistance" forKey:?];
  [(RTTripClusterMetadata *)self avgWalkTime];
  [coderCopy encodeDouble:@"avgWalkTime" forKey:?];
  [(RTTripClusterMetadata *)self avgWalkDistance];
  [coderCopy encodeDouble:@"avgWalkDistance" forKey:?];
  [coderCopy encodeInt:-[RTTripClusterMetadata bikeTraversalCount](self forKey:{"bikeTraversalCount"), @"bikeTraversalCount"}];
  [coderCopy encodeInt:-[RTTripClusterMetadata walkTraversalCount](self forKey:{"walkTraversalCount"), @"walkTraversalCount"}];
  [coderCopy encodeInt:-[RTTripClusterMetadata clusterOrder](self forKey:{"clusterOrder"), @"clusterOrder"}];
}

- (RTTripClusterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterId"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mostRecentDate"];
  v6 = [coderCopy decodeIntegerForKey:@"modeOfTransport"];
  v7 = [coderCopy decodeIntForKey:@"countOfTravel"];
  [coderCopy decodeDoubleForKey:@"originLatitude"];
  v43 = v8;
  [coderCopy decodeDoubleForKey:@"originLongitude"];
  v42 = v9;
  [coderCopy decodeDoubleForKey:@"destinationLatitude"];
  v41 = v10;
  [coderCopy decodeDoubleForKey:@"destinationLongitude"];
  v40 = v11;
  [coderCopy decodeDoubleForKey:@"avgTripTime"];
  v39 = v12;
  [coderCopy decodeDoubleForKey:@"avgTripDistance"];
  v38 = v13;
  [coderCopy decodeDoubleForKey:@"minTripTime"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"maxTripTime"];
  v17 = v16;
  [coderCopy decodeDoubleForKey:@"minTripDistance"];
  v19 = v18;
  [coderCopy decodeDoubleForKey:@"maxTripDistance"];
  v21 = v20;
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commuteID"];
  v23 = [coderCopy decodeBoolForKey:@"isLocked"];
  [coderCopy decodeDoubleForKey:@"avgBikeTime"];
  v25 = v24;
  [coderCopy decodeDoubleForKey:@"avgBikeDistance"];
  v27 = v26;
  [coderCopy decodeDoubleForKey:@"avgWalkTime"];
  v29 = v28;
  [coderCopy decodeDoubleForKey:@"avgWalkDistance"];
  v31 = v30;
  v32 = [coderCopy decodeIntForKey:@"bikeTraversalCount"];
  v33 = [coderCopy decodeIntForKey:@"walkTraversalCount"];
  v34 = [coderCopy decodeIntForKey:@"clusterOrder"];

  LOWORD(v37) = v34;
  v35 = [(RTTripClusterMetadata *)self initWithTripClusterId:v4 dateOfMostRecentTrip:v5 modeOfTransport:v6 countOfTraversal:v7 originLatitude:v22 originLongitude:v23 destinationLatitude:v43 destinationLongitude:v42 averageTripTime:v41 averageTripDistance:v40 minimumTripTime:v39 maximumTripTime:v38 minimumTripDistance:v15 maximumTripDistance:v17 commuteID:v19 isLocked:v21 avgBikeDistance:v27 avgBikeTime:v25 avgWalkDistance:v31 avgWalkTime:v29 bikeTraversalCount:__PAIR64__(v33 walkTraversalCount:v32) clusterOrder:v37];

  return v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (!(self | equalCopy))
  {
    v7 = 1;
    goto LABEL_3;
  }

  v7 = 0;
  if (self && equalCopy)
  {
    v102 = [equalCopy isMemberOfClass:objc_opt_class()];
    clusterID = [(RTTripClusterMetadata *)self clusterID];
    if (!clusterID)
    {
      clusterID2 = [v6 clusterID];
      if (!clusterID2)
      {
        v101 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    clusterID3 = [(RTTripClusterMetadata *)self clusterID];
    if (clusterID3)
    {
      v11 = clusterID3;
      clusterID4 = [v6 clusterID];
      if (clusterID4)
      {
        v13 = clusterID4;
        clusterID5 = [(RTTripClusterMetadata *)self clusterID];
        clusterID6 = [v6 clusterID];
        v101 = [clusterID5 isEqual:clusterID6];

        if (!clusterID)
        {
          goto LABEL_16;
        }

LABEL_17:

        dateOfMostRecentTrip = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
        if (!dateOfMostRecentTrip)
        {
          clusterID2 = [v6 dateOfMostRecentTrip];
          if (!clusterID2)
          {
            v100 = 1;
LABEL_27:

            goto LABEL_28;
          }
        }

        dateOfMostRecentTrip2 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
        if (dateOfMostRecentTrip2)
        {
          v18 = dateOfMostRecentTrip2;
          dateOfMostRecentTrip3 = [v6 dateOfMostRecentTrip];
          if (dateOfMostRecentTrip3)
          {
            v20 = dateOfMostRecentTrip3;
            dateOfMostRecentTrip4 = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
            dateOfMostRecentTrip5 = [v6 dateOfMostRecentTrip];
            v100 = [dateOfMostRecentTrip4 isEqual:dateOfMostRecentTrip5];

            if (!dateOfMostRecentTrip)
            {
              goto LABEL_27;
            }

LABEL_28:

            modeOfTransport = [(RTTripClusterMetadata *)self modeOfTransport];
            modeOfTransport2 = [v6 modeOfTransport];
            countOfTraversal = [(RTTripClusterMetadata *)self countOfTraversal];
            countOfTraversal2 = [v6 countOfTraversal];
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
            commuteID = [(RTTripClusterMetadata *)self commuteID];
            if (!commuteID)
            {
              clusterID2 = [v6 commuteID];
              if (!clusterID2)
              {
                v50 = 1;
LABEL_38:

                goto LABEL_39;
              }
            }

            commuteID2 = [(RTTripClusterMetadata *)self commuteID];
            if (commuteID2)
            {
              v45 = commuteID2;
              commuteID3 = [v6 commuteID];
              if (commuteID3)
              {
                v47 = commuteID3;
                commuteID4 = [(RTTripClusterMetadata *)self commuteID];
                commuteID5 = [v6 commuteID];
                v50 = [commuteID4 isEqual:commuteID5];

                if (!commuteID)
                {
                  goto LABEL_38;
                }

LABEL_39:

                isLocked = [(RTTripClusterMetadata *)self isLocked];
                isLocked2 = [v6 isLocked];
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
                bikeTraversalCount = [(RTTripClusterMetadata *)self bikeTraversalCount];
                bikeTraversalCount2 = [v6 bikeTraversalCount];
                walkTraversalCount = [(RTTripClusterMetadata *)self walkTraversalCount];
                walkTraversalCount2 = [v6 walkTraversalCount];
                clusterOrder = [(RTTripClusterMetadata *)self clusterOrder];
                clusterOrder2 = [v6 clusterOrder];
                v7 = 0;
                if ((v102 & v101 & v100) == 1 && modeOfTransport == modeOfTransport2 && countOfTraversal == countOfTraversal2 && vabdd_f64(v95, v94) < 0.0000001 && vabdd_f64(v93, v92) < 0.0000001 && vabdd_f64(v91, v90) < 0.0000001 && vabdd_f64(v89, v88) < 0.0000001 && vabdd_f64(v87, v86) < 0.0000001 && vabdd_f64(v85, v84) < 0.0000001 && vabdd_f64(v83, v82) < 0.0000001 && vabdd_f64(v81, v80) < 0.0000001 && vabdd_f64(v79, v78) < 0.0000001 && vabdd_f64(v77, v76) < 0.0000001 && v50 && ((isLocked ^ isLocked2) & 1) == 0 && vabdd_f64(v54, v56) < 0.0000001 && vabdd_f64(v58, v60) < 0.0000001 && vabdd_f64(v62, v64) < 0.0000001 && vabdd_f64(v66, v68) < 0.0000001 && bikeTraversalCount == bikeTraversalCount2)
                {
                  v7 = walkTraversalCount == walkTraversalCount2 && clusterOrder == clusterOrder2;
                }

                goto LABEL_3;
              }
            }

            v50 = 0;
            if (!commuteID)
            {
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }

        v100 = 0;
        if (!dateOfMostRecentTrip)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    v101 = 0;
    if (!clusterID)
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
  clusterID = [(RTTripClusterMetadata *)self clusterID];
  dateOfMostRecentTrip = [(RTTripClusterMetadata *)self dateOfMostRecentTrip];
  modeOfTransport = [(RTTripClusterMetadata *)self modeOfTransport];
  countOfTraversal = [(RTTripClusterMetadata *)self countOfTraversal];
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
  commuteID = [(RTTripClusterMetadata *)self commuteID];
  isLocked = [(RTTripClusterMetadata *)self isLocked];
  [(RTTripClusterMetadata *)self avgBikeTime];
  v25 = v24;
  [(RTTripClusterMetadata *)self avgBikeDistance];
  v27 = v26;
  [(RTTripClusterMetadata *)self avgWalkTime];
  v29 = v28;
  [(RTTripClusterMetadata *)self avgWalkDistance];
  v31 = [v3 stringWithFormat:@"clusterId, %@, mostRecentTripDate, %@, modeOfTransport, %d, countOfTraversal, %d, originLat, %0.6f, originLon, %0.6f, destLat, %0.6f, destLon, %0.6f, avgTripTime, %0.2f, avgTripDistance, %0.2f, minTripTime, %0.2f, maxTripTime, %0.2f, minTripDistance, %0.2f, maxTripDistance, %0.2f, commuteID, %@, isLocked, %d, bikeTime, %0.2f, bikeDist, %02.f, walkTime, %0.2f, walkDist, %0.2f, cntBikeTravel, %d, cntWalkTravel, %d, clusterOrder, %d", clusterID, dateOfMostRecentTrip, modeOfTransport, countOfTraversal, v38, v37, v36, v35, v34, v33, v15, v17, v19, v21, commuteID, isLocked, v25, v27, v29, v30, -[RTTripClusterMetadata bikeTraversalCount](self, "bikeTraversalCount"), -[RTTripClusterMetadata walkTraversalCount](self, "walkTraversalCount"), -[RTTripClusterMetadata clusterOrder](self, "clusterOrder")];

  return v31;
}

@end