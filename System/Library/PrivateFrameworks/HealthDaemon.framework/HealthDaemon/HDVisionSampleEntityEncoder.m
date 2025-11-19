@interface HDVisionSampleEntityEncoder
- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6;
- (id)_quantityWithNumber:(void *)a3 unit:;
- (id)_valueForOptionalDoubleProperty:(uint64_t)a1 row:(void *)a2;
- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5;
- (id)createBareObjectWithRow:(HDSQLiteRow *)a3;
- (id)orderedProperties;
@end

@implementation HDVisionSampleEntityEncoder

- (id)orderedProperties
{
  v9[26] = *MEMORY[0x277D85DE8];
  v9[0] = @"prescription_type";
  v9[1] = @"verifiable_data";
  v9[2] = @"left_sphere";
  v9[3] = @"right_sphere";
  v9[4] = @"left_cylinder";
  v9[5] = @"right_cylinder";
  v9[6] = @"left_axis";
  v9[7] = @"right_axis";
  v9[8] = @"left_add_power";
  v9[9] = @"right_add_power";
  v9[10] = @"left_vertex_distance";
  v9[11] = @"right_vertex_distance";
  v9[12] = @"left_prism_amount";
  v9[13] = @"right_prism_amount";
  v9[14] = @"left_prism_angle";
  v9[15] = @"right_prism_angle";
  v9[16] = @"left_far_pupillary_distance";
  v9[17] = @"right_far_pupillary_distance";
  v9[18] = @"left_near_pupillary_distance";
  v9[19] = @"right_near_pupillary_distance";
  v9[20] = @"glasses_description";
  v9[21] = @"left_base_curve";
  v9[22] = @"right_base_curve";
  v9[23] = @"left_contact_diameter";
  v9[24] = @"right_contact_diameter";
  v9[25] = @"brand";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:26];
  v4 = [(HDEntityEncoder *)self superclassEncoder];
  v5 = [v4 orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)codableRepresentationForPersistentID:(int64_t)a3 row:(HDSQLiteRow *)a4 error:(id *)a5
{
  v9 = [(HDEntityEncoder *)self superclassEncoder];
  v10 = [v9 codableRepresentationForPersistentID:a3 row:a4 error:a5];

  if (v10)
  {
    v11 = objc_alloc_init(HDCodableVisionSample);
    [(HDCodableVisionSample *)v11 setSample:v10];
    v12 = HDSQLiteColumnWithNameAsInt64();
    v13 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_sphere" row:?];
    v21 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_sphere" row:?];
    v37 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_cylinder" row:?];
    v36 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_cylinder" row:?];
    v35 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_axis" row:?];
    v34 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_axis" row:?];
    v33 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_add_power" row:?];
    v32 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_add_power" row:?];
    v31 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_vertex_distance" row:?];
    v30 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_vertex_distance" row:?];
    v29 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_prism_amount" row:?];
    v28 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_prism_amount" row:?];
    v27 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_prism_angle" row:?];
    v26 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_prism_angle" row:?];
    v25 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_far_pupillary_distance" row:?];
    v24 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_far_pupillary_distance" row:?];
    v23 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_near_pupillary_distance" row:?];
    v22 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_near_pupillary_distance" row:?];
    if (HDSQLiteColumnWithNameIsNull())
    {
      v14 = 0;
    }

    else
    {
      v14 = HDSQLiteColumnWithNameAsString();
    }

    v15 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_base_curve" row:?];
    v16 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_base_curve" row:?];
    v17 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_contact_diameter" row:?];
    v18 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_contact_diameter" row:?];
    if (HDSQLiteColumnWithNameIsNull())
    {
      v19 = 0;
    }

    else
    {
      v19 = HDSQLiteColumnWithNameAsString();
    }

    [(HDCodableVisionSample *)v11 setPrescriptionType:v12];
    if (v13)
    {
      [v13 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftSphere:?];
    }

    if (v21)
    {
      [v21 doubleValue];
      [(HDCodableVisionSample *)v11 setRightSphere:?];
    }

    if (v37)
    {
      [v37 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftCylinder:?];
    }

    if (v36)
    {
      [v36 doubleValue];
      [(HDCodableVisionSample *)v11 setRightCylinder:?];
    }

    if (v35)
    {
      [v35 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftAxis:?];
    }

    if (v34)
    {
      [v34 doubleValue];
      [(HDCodableVisionSample *)v11 setRightAxis:?];
    }

    if (v33)
    {
      [v33 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftAddPower:?];
    }

    if (v32)
    {
      [v32 doubleValue];
      [(HDCodableVisionSample *)v11 setRightAddPower:?];
    }

    if (v31)
    {
      [v31 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftVertexDistance:?];
    }

    if (v30)
    {
      [v30 doubleValue];
      [(HDCodableVisionSample *)v11 setRightVertexDistance:?];
    }

    if (v29)
    {
      [v29 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftPrismAmount:?];
    }

    if (v28)
    {
      [v28 doubleValue];
      [(HDCodableVisionSample *)v11 setRightPrismAmount:?];
    }

    if (v27)
    {
      [v27 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftPrismAngle:?];
    }

    if (v26)
    {
      [v26 doubleValue];
      [(HDCodableVisionSample *)v11 setRightPrismAngle:?];
    }

    if (v25)
    {
      [v25 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftFarPupillaryDistance:?];
    }

    if (v24)
    {
      [v24 doubleValue];
      [(HDCodableVisionSample *)v11 setRightFarPupillaryDistance:?];
    }

    if (v23)
    {
      [v23 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftNearPupillaryDistance:?];
    }

    if (v22)
    {
      [v22 doubleValue];
      [(HDCodableVisionSample *)v11 setRightNearPupillaryDistance:?];
    }

    if (v14)
    {
      [(HDCodableVisionSample *)v11 setGlassesDescription:v14];
    }

    if (v15)
    {
      [v15 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftBaseCurve:?];
    }

    if (v16)
    {
      [v16 doubleValue];
      [(HDCodableVisionSample *)v11 setRightBaseCurve:?];
    }

    if (v17)
    {
      [v17 doubleValue];
      [(HDCodableVisionSample *)v11 setLeftContactDiameter:?];
    }

    if (v18)
    {
      [v18 doubleValue];
      [(HDCodableVisionSample *)v11 setRightContactDiameter:?];
    }

    if (v19)
    {
      [(HDCodableVisionSample *)v11 setBrand:v19];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_valueForOptionalDoubleProperty:(uint64_t)a1 row:(void *)a2
{
  v3 = a2;
  if (a1 && (HDSQLiteColumnWithNameIsNull() & 1) == 0)
  {
    v5 = MEMORY[0x277CCABB0];
    HDSQLiteColumnWithNameAsDouble();
    v4 = [v5 numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)a3
{
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_sphere" row:?];
  v6 = [MEMORY[0x277CCDAB0] diopterUnit];
  v7 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v5 unit:v6];

  v8 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_sphere" row:?];
  v9 = [MEMORY[0x277CCDAB0] diopterUnit];
  v10 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v8 unit:v9];

  if (v7 | v10)
  {
    if (v4 == 2)
    {
      v11 = MEMORY[0x277CCD218];
      goto LABEL_9;
    }

    if (v4 == 1)
    {
      v11 = MEMORY[0x277CCD488];
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_228986000, v12, OS_LOG_TYPE_FAULT, "Unexpectedly reached execution point. Creating generic vision prescription bare object.", v15, 2u);
    }
  }

  v11 = MEMORY[0x277CCDBC8];
LABEL_9:
  v13 = [[v11 alloc] _init];

  return v13;
}

- (id)_quantityWithNumber:(void *)a3 unit:
{
  v3 = 0;
  if (a1 && a2)
  {
    v5 = MEMORY[0x277CCD7E8];
    v6 = a3;
    [a2 doubleValue];
    v3 = [v5 quantityWithUnit:v6 doubleValue:?];
  }

  return v3;
}

- (BOOL)applyPropertiesToObject:(id)a3 persistentID:(int64_t)a4 row:(HDSQLiteRow *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(HDEntityEncoder *)self superclassEncoder];
  LODWORD(a4) = [v11 applyPropertiesToObject:v10 persistentID:a4 row:a5 error:a6];

  if (a4)
  {
    v12 = HDSQLiteColumnWithNameAsInt64();
    [v10 _setPrescriptionType:v12];
    v13 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_sphere" row:?];
    v14 = [MEMORY[0x277CCDAB0] diopterUnit];
    v15 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v13 unit:v14];

    v16 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_sphere" row:?];
    v17 = [MEMORY[0x277CCDAB0] diopterUnit];
    v18 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v16 unit:v17];

    v19 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_cylinder" row:?];
    v20 = [MEMORY[0x277CCDAB0] diopterUnit];
    v112 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v19 unit:v20];

    v21 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_cylinder" row:?];
    v22 = [MEMORY[0x277CCDAB0] diopterUnit];
    v111 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v21 unit:v22];

    v23 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_axis" row:?];
    v24 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    v110 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v23 unit:v24];

    v25 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_axis" row:?];
    v26 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    v109 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v25 unit:v26];

    v27 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_add_power" row:?];
    v28 = [MEMORY[0x277CCDAB0] diopterUnit];
    v108 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v27 unit:v28];

    v29 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_add_power" row:?];
    v30 = [MEMORY[0x277CCDAB0] diopterUnit];
    v31 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v29 unit:v30];

    if (!(v15 | v18))
    {
      v32 = 1;
LABEL_36:

      goto LABEL_37;
    }

    if (v12 == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v10;
        v61 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_base_curve" row:?];
        v62 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_base_curve" row:?];
        v103 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_contact_diameter" row:?];
        v63 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_contact_diameter" row:?];
        v99 = HDSQLiteColumnWithNameAsString();
        v101 = v62;
        v107 = v61;
        if (v15)
        {
          v94 = v15;
          v64 = objc_alloc(MEMORY[0x277CCD210]);
          [MEMORY[0x277CCDAB0] meterUnit];
          v65 = v105 = v33;
          v66 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v107 unit:v65];
          [MEMORY[0x277CCDAB0] meterUnit];
          v68 = v67 = v63;
          v69 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v103 unit:v68];
          v70 = [v64 initWithSphere:v94 cylinder:v112 axis:v110 addPower:v108 baseCurve:v66 diameter:v69];

          v63 = v67;
          v62 = v101;

          v33 = v105;
          [v105 _setLeftEyeSpecification:v70];

          v15 = v94;
        }

        if (v18)
        {
          v71 = objc_alloc(MEMORY[0x277CCD210]);
          [MEMORY[0x277CCDAB0] meterUnit];
          v72 = v106 = v63;
          v73 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v62 unit:v72];
          v74 = [MEMORY[0x277CCDAB0] meterUnit];
          [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v106 unit:v74];
          v76 = v75 = v33;
          v77 = [v71 initWithSphere:v18 cylinder:v111 axis:v109 addPower:v31 baseCurve:v73 diameter:v76];

          v33 = v75;
          v62 = v101;

          v63 = v106;
          [v75 _setRightEyeSpecification:v77];
        }

        [v33 _setBrand:v99];

        goto LABEL_25;
      }

      v78 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Expected a contacts prescription"];
      if (v78)
      {
        if (a6)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v12 != 1)
      {
        v32 = 1;
        goto LABEL_36;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v10;
        v107 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_vertex_distance" row:?];
        v34 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_vertex_distance" row:?];
        v35 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_prism_amount" row:?];
        v98 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_prism_amount" row:?];
        v36 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_prism_angle" row:?];
        v96 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_prism_angle" row:?];
        v89 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_far_pupillary_distance" row:?];
        v100 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_far_pupillary_distance" row:?];
        v88 = [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"left_near_pupillary_distance" row:?];
        [HDVisionSampleEntityEncoder _valueForOptionalDoubleProperty:@"right_near_pupillary_distance" row:?];
        v95 = 0;
        v102 = v36;
        v104 = v33;
        v86 = v97 = v34;
        v87 = v35;
        if (v35 && v36)
        {
          v37 = objc_alloc(MEMORY[0x277CCDBD0]);
          v38 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v39 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v35 unit:v38];
          v40 = [MEMORY[0x277CCDAB0] radianAngleUnit];
          v41 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v102 unit:v40];
          v95 = [v37 initWithAmount:v39 angle:v41 eye:1];

          v33 = v104;
          v36 = v102;

          v34 = v97;
        }

        v42 = 0;
        v43 = v100;
        if (v98 && v96)
        {
          v44 = objc_alloc(MEMORY[0x277CCDBD0]);
          v91 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
          v45 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v98 unit:v91];
          v46 = [MEMORY[0x277CCDAB0] radianAngleUnit];
          v47 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v96 unit:v46];
          v48 = v44;
          v43 = v100;
          v49 = [v48 initWithAmount:v45 angle:v47 eye:2];

          v33 = v104;
          v36 = v102;

          v42 = v49;
          v34 = v97;
        }

        v90 = v42;
        if (v15)
        {
          v84 = objc_alloc(MEMORY[0x277CCD480]);
          v92 = [MEMORY[0x277CCDAB0] meterUnit];
          v82 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v107 unit:v92];
          v50 = [MEMORY[0x277CCDAB0] meterUnit];
          v51 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v89 unit:v50];
          v52 = [MEMORY[0x277CCDAB0] meterUnit];
          v53 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v88 unit:v52];
          v54 = [v84 initWithSphere:v15 cylinder:v112 axis:v110 addPower:v108 vertexDistance:v82 prism:v95 farPupillaryDistance:v51 nearPupillaryDistance:v53];

          v43 = v100;
          v33 = v104;

          v36 = v102;
          [v104 _setLeftEyeSpecification:v54];

          v42 = v90;
          v34 = v97;
        }

        v55 = v86;
        if (v18)
        {
          v83 = objc_alloc(MEMORY[0x277CCD480]);
          v85 = [MEMORY[0x277CCDAB0] meterUnit];
          v81 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v34 unit:v85];
          [MEMORY[0x277CCDAB0] meterUnit];
          v56 = v93 = v15;
          v57 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v43 unit:v56];
          v58 = [MEMORY[0x277CCDAB0] meterUnit];
          v59 = [(HDVisionSampleEntityEncoder *)self _quantityWithNumber:v86 unit:v58];
          v60 = [v83 initWithSphere:v18 cylinder:v111 axis:v109 addPower:v31 vertexDistance:v81 prism:v90 farPupillaryDistance:v57 nearPupillaryDistance:v59];

          v55 = v86;
          v33 = v104;

          v36 = v102;
          v15 = v93;

          v34 = v97;
          [v104 _setRightEyeSpecification:v60];

          v42 = v90;
          v43 = v100;
        }

LABEL_25:
        v32 = 1;
        v78 = v107;
LABEL_35:

        goto LABEL_36;
      }

      v78 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Expected a glasses prescription"];
      if (v78)
      {
        if (a6)
        {
LABEL_29:
          v79 = v78;
          v32 = 0;
          *a6 = v78;
LABEL_33:
          v33 = v78;
          goto LABEL_35;
        }

LABEL_32:
        _HKLogDroppedError();
        v32 = 0;
        goto LABEL_33;
      }
    }

    v33 = 0;
    v32 = 0;
    goto LABEL_35;
  }

  v32 = 0;
LABEL_37:

  return v32;
}

@end