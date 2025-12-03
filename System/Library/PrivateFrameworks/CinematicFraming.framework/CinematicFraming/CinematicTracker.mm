@interface CinematicTracker
- (CinematicTracker)init;
- (void)processDetections:(id)detections ofType:(int64_t)type atTime:(id *)time;
- (void)processFaceDetections:(id)detections bodyDetections:(id)bodyDetections atTime:(id *)time inView:(CGRect)view;
- (void)removeTrackOfType:(int64_t)type atIndex:(int)index atTime:(id *)time;
- (void)resetTracksFramingProperties;
- (void)updateBodyFacePairsAtTime:(id *)time;
@end

@implementation CinematicTracker

- (CinematicTracker)init
{
  v17.receiver = self;
  v17.super_class = CinematicTracker;
  v2 = [(CinematicTracker *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    allTracks = v2->_allTracks;
    tracksOidMappings = v2->_tracksOidMappings;
    v7 = 1;
    do
    {
      v8 = v7;
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = allTracks[v4];
      allTracks[v4] = v9;

      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = tracksOidMappings[v4];
      tracksOidMappings[v4] = v11;

      v7 = 0;
      v4 = 1;
    }

    while ((v8 & 1) != 0);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    oidToTrackMap = v3->_oidToTrackMap;
    v3->_oidToTrackMap = v13;

    v3->_trackIndexCounter = 0;
    v15 = v3;
  }

  return v3;
}

- (void)removeTrackOfType:(int64_t)type atIndex:(int)index atTime:(id *)time
{
  allTracks = self->_allTracks;
  indexCopy = index;
  v14 = [(NSMutableArray *)self->_allTracks[type] objectAtIndexedSubscript:index];
  pairTrack = [v14 pairTrack];

  if (pairTrack)
  {
    pairTrack2 = [v14 pairTrack];
    [pairTrack2 setPairTrack:0];

    [v14 setPairTrack:0];
  }

  oidToTrackMap = self->_oidToTrackMap;
  v12 = (&self->super.isa + type);
  v13 = [v12[3] objectAtIndexedSubscript:indexCopy];
  [(NSMutableDictionary *)oidToTrackMap removeObjectForKey:v13];

  [(NSMutableArray *)allTracks[type] exchangeObjectAtIndex:indexCopy withObjectAtIndex:[(NSMutableArray *)allTracks[type] count]- 1];
  [(NSMutableArray *)allTracks[type] removeLastObject];
  [v12[3] exchangeObjectAtIndex:indexCopy withObjectAtIndex:{objc_msgSend(v12[3], "count") - 1}];
  [v12[3] removeLastObject];
}

- (void)processFaceDetections:(id)detections bodyDetections:(id)bodyDetections atTime:(id *)time inView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  detectionsCopy = detections;
  time = *time;
  [(CinematicTracker *)self processDetections:bodyDetections ofType:0 atTime:&time];
  time = *time;
  v14 = 1;
  [(CinematicTracker *)self processDetections:detectionsCopy ofType:1 atTime:&time];
  v15 = 0;
  allTracks = self->_allTracks;
  do
  {
    v17 = v14;
    if ([(NSMutableArray *)allTracks[v15] count])
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = [(NSMutableArray *)allTracks[v15] objectAtIndexedSubscript:v18];
        v21 = v20;
        if (v20)
        {
          [v20 lastTimestamp];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        lhs = *time;
        CMTimeSubtract(&time, &lhs, &rhs);
        if (CMTimeGetSeconds(&time) > 1.0)
        {
          time = *time;
          [(CinematicTracker *)self removeTrackOfType:v15 atIndex:v19 atTime:&time];
          LODWORD(v19) = v19 - 1;
        }

        v19 = (v19 + 1);
        v18 = v19;
      }

      while ([(NSMutableArray *)allTracks[v15] count]> v19);
    }

    v14 = 0;
    v15 = 1;
  }

  while ((v17 & 1) != 0);
  time = *time;
  [(CinematicTracker *)self updateBodyFacePairsAtTime:&time];
  if ([(NSMutableArray *)self->_allTracks[0] count])
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = [(NSMutableArray *)*allTracks objectAtIndexedSubscript:v22];
      if ([v24 identifier] < 0)
      {
        pairTrack = [v24 pairTrack];

        if (!pairTrack)
        {
          time = *time;
          [(CinematicTracker *)self removeTrackOfType:0 atIndex:v23 atTime:&time];
          LODWORD(v23) = v23 - 1;
        }
      }

      v23 = (v23 + 1);
      v22 = v23;
    }

    while ([(NSMutableArray *)*allTracks count]> v23);
  }

  tracks = [(CinematicTracker *)self tracks];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = [tracks countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(tracks);
        }

        v31 = *(*(&v33 + 1) + 8 * i);
        time = *time;
        [v31 updatePropertiesWithTimestamp:&time inView:{x, y, width, height}];
      }

      v28 = [tracks countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v28);
  }
}

- (void)resetTracksFramingProperties
{
  tracks = [(CinematicTracker *)self tracks];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [tracks countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(tracks);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetProperties];
      }

      while (v4 != v6);
      v4 = [tracks countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)processDetections:(id)detections ofType:(int64_t)type atTime:(id *)time
{
  detectionsCopy = detections;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v9 = [detectionsCopy countByEnumeratingWithState:&v92 objects:v91 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v93;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v93 != v11)
        {
          objc_enumerationMutation(detectionsCopy);
        }

        v13 = *(*(&v92 + 1) + 8 * i);
        oidToTrackMap = self->_oidToTrackMap;
        v15 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v13, "oid")}];
        v16 = [(NSMutableDictionary *)oidToTrackMap objectForKeyedSubscript:v15];

        if (v16)
        {
          time1 = *time;
          [v16 addObservation:v13 atTime:&time1];
        }
      }

      v10 = [detectionsCopy countByEnumeratingWithState:&v92 objects:v91 count:16];
    }

    while (v10);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = detectionsCopy;
  v17 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v87;
    allTracks = self->_allTracks;
    tracksOidMappings = self->_tracksOidMappings;
    selfCopy = self;
    v74 = *v87;
    do
    {
      v21 = 0;
      v75 = v18;
      do
      {
        if (*v87 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v86 + 1) + 8 * v21);
        v23 = self->_oidToTrackMap;
        v24 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v22, "oid")}];
        v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:v24];

        if (!v25)
        {
          v79 = [v22 oid];
          if (![(NSMutableArray *)allTracks[type] count])
          {
            goto LABEL_28;
          }

          v26 = 0;
          v27 = -1;
          v83 = INFINITY;
          do
          {
            v28 = [(NSMutableArray *)allTracks[type] objectAtIndexedSubscript:v26];
            v29 = v28;
            if (v28)
            {
              [v28 lastTimestamp];
            }

            else
            {
              memset(&time1, 0, sizeof(time1));
            }

            time2 = *time;
            if (CMTimeCompare(&time1, &time2))
            {
              [v29 lastObservationBounds];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              v80 = v34;
              v37 = v36;
              [v22 bounds];
              v39 = v38;
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v96.origin.x = v31;
              v96.origin.y = v33;
              v96.size.width = v35;
              v96.size.height = v37;
              MidX = CGRectGetMidX(v96);
              v97.origin.x = v39;
              v97.origin.y = v41;
              v97.size.width = v43;
              v97.size.height = v45;
              v47 = MidX - CGRectGetMidX(v97);
              v82 = v47;
              v98.origin.x = v31;
              v48 = v31;
              v98.origin.y = v33;
              v98.size.width = v80;
              v98.size.height = v37;
              MidY = CGRectGetMidY(v98);
              v99.origin.x = v39;
              v99.origin.y = v41;
              v99.size.width = v43;
              v99.size.height = v45;
              v50 = MidY - CGRectGetMidY(v99);
              v81 = v50;
              v100.origin.x = v48;
              v100.origin.y = v33;
              v100.size.width = v80;
              v100.size.height = v37;
              Width = CGRectGetWidth(v100);
              v101.origin.x = v39;
              v101.origin.y = v41;
              v101.size.width = v43;
              v101.size.height = v45;
              v52 = CGRectGetWidth(v101);
              v53 = v83;
              *&v52 = Width - v52;
              v54 = (((v81 * v81) + (v82 * v82)) + (*&v52 * *&v52));
              if (v83 > v54)
              {
                v27 = v26;
                v53 = v54;
              }

              v83 = v53;
            }

            ++v26;
          }

          while ([(NSMutableArray *)allTracks[type] count]> v26);
          self = selfCopy;
          if (v27 == -1)
          {
LABEL_28:
            ++self->_trackIndexCounter;
            if (type)
            {
              v64 = [BaseTrack alloc];
              trackIndexCounter = self->_trackIndexCounter;
              time1 = *time;
              v66 = [(BaseTrack *)v64 initWithObservation:v22 identifier:trackIndexCounter type:type atTime:&time1];
            }

            else
            {
              v67 = [CinematicTrack alloc];
              v68 = self->_trackIndexCounter;
              options = self->_options;
              time1 = *time;
              v66 = [(CinematicTrack *)v67 initWithObservation:v22 identifier:v68 options:options atTime:&time1];
            }

            v63 = v66;
            v70 = self->_oidToTrackMap;
            v71 = [MEMORY[0x277CCABB0] numberWithLong:v79];
            [(NSMutableDictionary *)v70 setObject:v63 forKeyedSubscript:v71];

            [(NSMutableArray *)allTracks[type] addObject:v63];
            v72 = tracksOidMappings[type];
            v73 = [MEMORY[0x277CCABB0] numberWithLong:v79];
            [(NSMutableArray *)v72 addObject:v73];
          }

          else
          {
            v55 = selfCopy->_oidToTrackMap;
            v56 = v27;
            v57 = [(NSMutableArray *)tracksOidMappings[type] objectAtIndexedSubscript:v27];
            [(NSMutableDictionary *)v55 removeObjectForKey:v57];

            v58 = [(NSMutableArray *)allTracks[type] objectAtIndexedSubscript:v56];
            v59 = selfCopy->_oidToTrackMap;
            v60 = [MEMORY[0x277CCABB0] numberWithLong:v79];
            v61 = v59;
            self = selfCopy;
            [(NSMutableDictionary *)v61 setObject:v58 forKeyedSubscript:v60];

            v62 = [MEMORY[0x277CCABB0] numberWithLong:v79];
            [(NSMutableArray *)tracksOidMappings[type] setObject:v62 atIndexedSubscript:v56];

            v63 = [(NSMutableArray *)allTracks[type] objectAtIndexedSubscript:v56];
            time1 = *time;
            [v63 addObservation:v22 atTime:&time1];
          }

          v19 = v74;
          v18 = v75;
          v25 = 0;
        }

        ++v21;
      }

      while (v21 != v18);
      v18 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
    }

    while (v18);
  }
}

- (void)updateBodyFacePairsAtTime:(id *)time
{
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v3 = self->_allTracks[0];
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v104 objects:v103 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v105;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v105 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v104 + 1) + 8 * i);
        pairTrack = [v8 pairTrack];
        if (pairTrack)
        {
          v10 = pairTrack;
          identifier = [v8 identifier];

          if ((identifier & 0x8000000000000000) == 0)
          {
            [v8 lastObservationBounds];
            v13 = v12;
            v15 = v14;
            v17 = v16;
            v19 = v18;
            pairTrack2 = [v8 pairTrack];
            [pairTrack2 lastObservationBounds];
            v116.origin.x = v21;
            v116.origin.y = v22;
            v116.size.width = v23;
            v116.size.height = v24;
            v108.origin.x = v13;
            v108.origin.y = v15;
            v108.size.width = v17;
            v108.size.height = v19;
            v109 = CGRectIntersection(v108, v116);
            *&v13 = v109.size.width * v109.size.height;
            pairTrack3 = [v8 pairTrack];
            [pairTrack3 lastObservationBounds];
            v28 = v26 * v27;
            *&v15 = v28 * 0.3;

            if (*&v15 > *&v13)
            {
              pairTrack4 = [v8 pairTrack];
              [pairTrack4 setPairTrack:0];

              [v8 setPairTrack:0];
            }
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v104 objects:v103 count:16];
    }

    while (v5);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = self->_allTracks[1];
  v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v99 objects:v98 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v100;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v100 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v99 + 1) + 8 * j);
        pairTrack5 = [v34 pairTrack];
        if (pairTrack5)
        {
          v36 = pairTrack5;
          pairTrack6 = [v34 pairTrack];
          identifier2 = [pairTrack6 identifier];

          if (identifier2 > 0)
          {
            continue;
          }
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v39 = self->_allTracks[0];
        v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v94 objects:v93 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = 0;
          v43 = *v95;
          v44 = 0.0;
          while (1)
          {
            v45 = 0;
            do
            {
              if (*v95 != v43)
              {
                objc_enumerationMutation(v39);
              }

              v46 = *(*(&v94 + 1) + 8 * v45);
              pairTrack7 = [v46 pairTrack];
              if (pairTrack7)
              {
                goto LABEL_25;
              }

              if ([v46 identifier] >= 1)
              {
                [v34 lastObservationBounds];
                v49 = v48;
                v51 = v50;
                v53 = v52;
                v55 = v54;
                [v46 lastObservationBounds];
                v117.origin.x = v56;
                v117.origin.y = v57;
                v117.size.width = v58;
                v117.size.height = v59;
                v110.origin.x = v49;
                v110.origin.y = v51;
                v110.size.width = v53;
                v110.size.height = v55;
                v111 = CGRectIntersection(v110, v117);
                v60 = v111.size.width * v111.size.height;
                if (v44 < v60)
                {
                  v61 = v46;
                  pairTrack7 = v42;
                  v42 = v61;
                  v44 = v60;
LABEL_25:
                }
              }

              ++v45;
            }

            while (v41 != v45);
            v62 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v94 objects:v93 count:16];
            v41 = v62;
            if (!v62)
            {
              goto LABEL_34;
            }
          }
        }

        v42 = 0;
        v44 = 0.0;
LABEL_34:

        [v34 lastObservationBounds];
        v65 = v63 * v64;
        if ((v44 / v65) <= 0.3 || v42 == 0)
        {
          options = self->_options;
          if (options && [(CinematicFramingSessionOptions *)options inferSubjectBodyFromFaceLocation])
          {
            [v34 lastObservationBounds];
            Width = CGRectGetWidth(v112);
            v69 = Width + Width;
            [v34 lastObservationBounds];
            v70 = CGRectGetHeight(v113) * 3.0;
            [v34 lastObservationBounds];
            v71 = v69;
            v72 = CGRectGetMidX(v114) + v71 * -0.5;
            [v34 lastObservationBounds];
            v73 = v70;
            v74 = CGRectGetMinY(v115) + v73 / -10.0;
            v75 = objc_alloc_init(Detection);
            -[Detection setOid:](v75, "setOid:", -[v34 identifier]);
            [(Detection *)v75 setBounds:v72, v74, v71, v73];
            pairTrack8 = [v34 pairTrack];

            if (pairTrack8)
            {
              pairTrack9 = [v34 pairTrack];
              v91 = *&time->var0;
              var3 = time->var3;
              [(BaseTrack *)pairTrack9 addObservation:v75 atTime:&v91];
            }

            else
            {
              v87 = [(Detection *)v75 oid];
              ++self->_trackIndexCounter;
              v80 = [CinematicTrack alloc];
              v81 = self->_options;
              v82 = -self->_trackIndexCounter;
              v91 = *&time->var0;
              var3 = time->var3;
              pairTrack9 = [(CinematicTrack *)v80 initWithObservation:v75 identifier:v82 options:v81 atTime:&v91];
              oidToTrackMap = self->_oidToTrackMap;
              v84 = [MEMORY[0x277CCABB0] numberWithLong:v87];
              [(NSMutableDictionary *)oidToTrackMap setObject:pairTrack9 forKeyedSubscript:v84];

              [(NSMutableArray *)self->_allTracks[0] addObject:pairTrack9];
              v85 = self->_tracksOidMappings[0];
              v86 = [MEMORY[0x277CCABB0] numberWithLong:v87];
              [(NSMutableArray *)v85 addObject:v86];

              [(BaseTrack *)pairTrack9 setPairTrack:v34];
              [v34 setPairTrack:pairTrack9];
            }
          }
        }

        else
        {
          pairTrack10 = [v34 pairTrack];

          if (pairTrack10)
          {
            pairTrack11 = [v34 pairTrack];
            [pairTrack11 setPairTrack:0];
          }

          [v34 setPairTrack:v42];
          [v42 setPairTrack:v34];
        }
      }

      v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v99 objects:v98 count:16];
    }

    while (v31);
  }
}

@end