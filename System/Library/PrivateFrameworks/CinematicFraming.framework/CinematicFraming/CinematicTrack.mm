@interface CinematicTrack
- (CGRect)afterImageBoundingBoxAtTime:(id *)a3;
- (CGRect)boundingBoxForFraming;
- (CGRect)faceBoundingBoxForFramingAtTime:(id *)a3;
- (CinematicTrack)initWithObservation:(id)a3 identifier:(int64_t)a4 options:(id)a5 atTime:(id *)a6;
- (void)setAfterImage:(CGRect)a3 forDuration:(float)a4 atTime:(id *)a5;
- (void)updatePropertiesWithTimestamp:(id *)a3 inView:(CGRect)a4;
@end

@implementation CinematicTrack

- (CinematicTrack)initWithObservation:(id)a3 identifier:(int64_t)a4 options:(id)a5 atTime:(id *)a6
{
  v12.receiver = self;
  v12.super_class = CinematicTrack;
  v11 = *a6;
  v6 = [(BaseTrack *)&v12 initWithObservation:a3 identifier:a4 type:0 atTime:&v11];
  v7 = v6;
  if (v6)
  {
    v8 = *(MEMORY[0x277CBF398] + 16);
    *(v6 + 184) = *MEMORY[0x277CBF398];
    *(v6 + 200) = v8;
    v9 = v6;
  }

  return v7;
}

- (void)updatePropertiesWithTimestamp:(id *)a3 inView:(CGRect)a4
{
  [(BaseTrack *)self lastObservationBounds:a3];
  self->_boundingBoxForFraming.origin.x = v5;
  self->_boundingBoxForFraming.origin.y = v6;
  self->_boundingBoxForFraming.size.width = v7;
  self->_boundingBoxForFraming.size.height = v8;
}

- (void)setAfterImage:(CGRect)a3 forDuration:(float)a4 atTime:(id *)a5
{
  self->_afterImageBoundingBox = a3;
  p_afterImageExpirationTimestamp = &self->_afterImageExpirationTimestamp;
  CMTimeMake(&rhs, (a4 * 1000000.0), 1000000);
  v7 = *a5;
  CMTimeAdd(&v9, &v7, &rhs);
  *p_afterImageExpirationTimestamp = v9;
}

- (CGRect)afterImageBoundingBoxAtTime:(id *)a3
{
  p_afterImageExpirationTimestamp = &self->_afterImageExpirationTimestamp;
  time1 = self->_afterImageExpirationTimestamp;
  v11 = **&MEMORY[0x277CC0898];
  if (CMTimeCompare(&time1, &v11) && (time1 = *a3, v11 = *p_afterImageExpirationTimestamp, CMTimeCompare(&time1, &v11) < 0))
  {
    p_afterImageBoundingBox = &self->_afterImageBoundingBox;
  }

  else
  {
    p_afterImageBoundingBox = MEMORY[0x277CBF398];
  }

  width = p_afterImageBoundingBox->size.width;
  height = p_afterImageBoundingBox->size.height;
  x = p_afterImageBoundingBox->origin.x;
  y = p_afterImageBoundingBox->origin.y;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)faceBoundingBoxForFramingAtTime:(id *)a3
{
  v4 = [(BaseTrack *)self pairTrack];

  if (v4)
  {
    v5 = [(BaseTrack *)self pairTrack];
    [v5 lastObservationBounds];
    v7 = v6;
    rect = v6;
    rect_8 = v8;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(BaseTrack *)self lastObservationBounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v68.origin.x = v7;
    v68.origin.y = v9;
    v68.size.width = v11;
    v68.size.height = v13;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = v15;
    v69.origin.y = v17;
    v69.size.width = v19;
    v69.size.height = v21;
    v23 = MinX - CGRectGetMinX(v69);
    v70.origin.x = v15;
    v70.origin.y = v17;
    v70.size.width = v19;
    v70.size.height = v21;
    v61 = v23 / CGRectGetWidth(v70);
    v71.origin.y = rect_8;
    v71.origin.x = rect;
    v71.size.width = v11;
    v71.size.height = v13;
    MinY = CGRectGetMinY(v71);
    v72.origin.x = v15;
    v72.origin.y = v17;
    v72.size.width = v19;
    v72.size.height = v21;
    v25 = MinY - CGRectGetMinY(v72);
    v73.origin.x = v15;
    v73.origin.y = v17;
    v73.size.width = v19;
    v73.size.height = v21;
    v60 = v25 / CGRectGetHeight(v73);
    v74.origin.x = rect;
    v74.origin.y = rect_8;
    v74.size.width = v11;
    v74.size.height = v13;
    Width = CGRectGetWidth(v74);
    v75.origin.x = v15;
    v75.origin.y = v17;
    v75.size.width = v19;
    v75.size.height = v21;
    v58 = Width / CGRectGetWidth(v75);
    v76.origin.x = rect;
    v76.origin.y = rect_8;
    v76.size.width = v11;
    v76.size.height = v13;
    Height = CGRectGetHeight(v76);
    v77.origin.x = v15;
    v77.origin.y = v17;
    v77.size.width = v19;
    v77.size.height = v21;
    v28 = CGRectGetHeight(v77);
    self->_lastMeasuredFaceBoundingBox.origin.x = v61;
    self->_lastMeasuredFaceBoundingBox.origin.y = v60;
    self->_lastMeasuredFaceBoundingBox.size.width = v58;
    self->_lastMeasuredFaceBoundingBox.size.height = Height / v28;
  }

  p_lastMeasuredFaceBoundingBox = &self->_lastMeasuredFaceBoundingBox;
  v30 = CGRectEqualToRect(self->_lastMeasuredFaceBoundingBox, *MEMORY[0x277CBF398]);
  [(CinematicTrack *)self boundingBoxForFraming];
  v35 = v33;
  if (v30)
  {
    v36 = v33 / 3.0;
    v37 = v36;
    [(CinematicTrack *)self boundingBoxForFraming];
    v38 = v37;
    if (v39 <= v37)
    {
      [(CinematicTrack *)self boundingBoxForFraming];
      v41 = v40;
      v38 = v41;
    }

    [(CinematicTrack *)self boundingBoxForFraming];
    v42 = CGRectGetMidX(v78) + v37 * -0.5;
    [(CinematicTrack *)self boundingBoxForFraming];
    v43 = CGRectGetMinY(v79);
  }

  else
  {
    v44 = v31;
    v45 = v32;
    v46 = v34;
    v80.origin.x = p_lastMeasuredFaceBoundingBox->origin.x;
    y = self->_lastMeasuredFaceBoundingBox.origin.y;
    rect_8a = p_lastMeasuredFaceBoundingBox->origin.x;
    v80.size.width = self->_lastMeasuredFaceBoundingBox.size.width;
    v48 = self->_lastMeasuredFaceBoundingBox.size.height;
    v59 = v80.size.width;
    v80.origin.y = y;
    v80.size.height = v48;
    v49 = CGRectGetMinX(v80);
    v81.origin.x = v44;
    v81.origin.y = v45;
    v81.size.width = v35;
    v81.size.height = v46;
    v50 = CGRectGetWidth(v81);
    v82.origin.x = v44;
    v82.origin.y = v45;
    v82.size.width = v35;
    v82.size.height = v46;
    recta = CGRectGetMinX(v82) + v49 * v50;
    v83.origin.x = rect_8a;
    v83.origin.y = y;
    v83.size.width = v59;
    v83.size.height = v48;
    v62 = CGRectGetMinY(v83);
    v84.origin.x = v44;
    v84.origin.y = v45;
    v84.size.width = v35;
    v84.size.height = v46;
    v51 = CGRectGetHeight(v84);
    v85.origin.x = v44;
    v85.origin.y = v45;
    v85.size.width = v35;
    v85.size.height = v46;
    v63 = CGRectGetMinY(v85) + v62 * v51;
    v86.origin.x = rect_8a;
    v86.origin.y = y;
    v86.size.width = v59;
    v86.size.height = v48;
    v52 = CGRectGetWidth(v86);
    v87.origin.x = v44;
    v87.origin.y = v45;
    v87.size.width = v35;
    v87.size.height = v46;
    v37 = v52 * CGRectGetWidth(v87);
    v88.origin.x = rect_8a;
    v88.origin.y = y;
    v88.size.width = v59;
    v88.size.height = v48;
    v53 = CGRectGetHeight(v88);
    v89.origin.x = v44;
    v42 = recta;
    v89.origin.y = v45;
    v89.size.width = v35;
    v89.size.height = v46;
    v54 = CGRectGetHeight(v89);
    v43 = v63;
    v38 = v53 * v54;
  }

  v55 = v42;
  v56 = v37;
  v57 = v38;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v43;
  result.origin.x = v55;
  return result;
}

- (CGRect)boundingBoxForFraming
{
  x = self->_boundingBoxForFraming.origin.x;
  y = self->_boundingBoxForFraming.origin.y;
  width = self->_boundingBoxForFraming.size.width;
  height = self->_boundingBoxForFraming.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end