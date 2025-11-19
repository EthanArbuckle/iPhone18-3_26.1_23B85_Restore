@interface FRCBodyBoundingBoxDetector
- (id)createBodyRectanglesWithObservation:(id)a3 frameAspectRatio:(float)a4;
@end

@implementation FRCBodyBoundingBoxDetector

- (id)createBodyRectanglesWithObservation:(id)a3 frameAspectRatio:(float)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    v7 = *MEMORY[0x277CE3068];
    v65 = 0;
    v61 = v5;
    v8 = [v5 recognizedPointsForGroupKey:v7 error:&v65];
    v9 = objc_alloc_init(BodyPoint);
    v64 = objc_alloc_init(BodyPoint);
    v10 = objc_alloc_init(BodyPoint);
    v11 = objc_alloc_init(BodyPoint);
    v12 = objc_alloc_init(BodyPoint);
    v13 = objc_alloc_init(BodyPoint);
    v63 = objc_alloc_init(BodyPoint);
    v62 = objc_alloc_init(BodyPoint);
    v14 = [v8 objectForKeyedSubscript:@"left_hand_joint"];
    v15 = v14;
    if (v14)
    {
      [v14 location];
      [(BodyPoint *)v9 setLocation:?];
      [v15 confidence];
      [(BodyPoint *)v9 setScore:?];
    }

    v16 = [v8 objectForKeyedSubscript:@"right_hand_joint"];

    if (v16)
    {
      [v16 location];
      [(BodyPoint *)v64 setLocation:?];
      [v16 confidence];
      [(BodyPoint *)v64 setScore:?];
    }

    v17 = [v8 objectForKeyedSubscript:@"left_forearm_joint"];

    if (v17)
    {
      [v17 location];
      [(BodyPoint *)v10 setLocation:?];
      [v17 confidence];
      [(BodyPoint *)v10 setScore:?];
    }

    v18 = [v8 objectForKeyedSubscript:@"right_forearm_joint"];

    if (v18)
    {
      [v18 location];
      [(BodyPoint *)v11 setLocation:?];
      [v18 confidence];
      [(BodyPoint *)v11 setScore:?];
    }

    v19 = [v8 objectForKeyedSubscript:@"left_foot_joint"];

    if (v19)
    {
      [v19 location];
      [(BodyPoint *)v12 setLocation:?];
      [v19 confidence];
      [(BodyPoint *)v12 setScore:?];
    }

    v20 = [v8 objectForKeyedSubscript:@"right_foot_joint"];

    if (v20)
    {
      [v20 location];
      [(BodyPoint *)v13 setLocation:?];
      [v20 confidence];
      [(BodyPoint *)v13 setScore:?];
    }

    v21 = [v8 objectForKeyedSubscript:@"left_leg_joint"];

    if (v21)
    {
      [v21 location];
      [(BodyPoint *)v63 setLocation:?];
      [v21 confidence];
      [(BodyPoint *)v63 setScore:?];
    }

    v22 = [v8 objectForKeyedSubscript:@"right_leg_joint"];

    if (v22)
    {
      [v22 location];
      [(BodyPoint *)v62 setLocation:?];
      [v22 confidence];
      [(BodyPoint *)v62 setScore:?];
    }

    [(BodyPoint *)v9 score];
    if (v23 > 0.5)
    {
      [(BodyPoint *)v9 location];
      v25 = v24;
      v27 = v26;
      [(BodyPoint *)v10 location];
      *&v28 = a4;
      v31 = [FRCFaceHandLegRectangle bodyRectangleWithCenter:2 tip:v25 category:v27 frameAspectRatio:v29, v30, v28];
      [v6 addObject:v31];
    }

    [(BodyPoint *)v64 score];
    if (v32 > 0.5)
    {
      [(BodyPoint *)v64 location];
      v34 = v33;
      v36 = v35;
      [(BodyPoint *)v11 location];
      *&v37 = a4;
      v40 = [FRCFaceHandLegRectangle bodyRectangleWithCenter:2 tip:v34 category:v36 frameAspectRatio:v38, v39, v37];
      [v6 addObject:v40];
    }

    [(BodyPoint *)v12 score];
    if (v41 > 0.5)
    {
      [(BodyPoint *)v12 location];
      v43 = v42;
      v45 = v44;
      [(BodyPoint *)v63 location];
      *&v46 = a4;
      v49 = [FRCFaceHandLegRectangle bodyRectangleWithCenter:3 tip:v43 category:v45 frameAspectRatio:v47, v48, v46];
      [v6 addObject:v49];
    }

    [(BodyPoint *)v13 score];
    if (v50 > 0.5)
    {
      [(BodyPoint *)v13 location];
      v52 = v51;
      v54 = v53;
      [(BodyPoint *)v62 location];
      *&v55 = a4;
      v58 = [FRCFaceHandLegRectangle bodyRectangleWithCenter:3 tip:v52 category:v54 frameAspectRatio:v56, v57, v55];
      [v6 addObject:v58];
    }

    v59 = v6;

    v5 = v61;
  }

  return v6;
}

@end