@interface HDVisionPrescriptionEntity
+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4;
+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7;
+ (id)foreignKeys;
+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7;
@end

@implementation HDVisionPrescriptionEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"data_id";
  v2 = +[(HDDataEntity *)HDSampleEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)insertDataObject:(id)a3 withProvenance:(id)a4 inDatabase:(id)a5 persistentID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_class();
  if (([v15 isEqual:objc_opt_class()] & 1) == 0)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"HDVisionPrescriptionEntity.m" lineNumber:172 description:{@"Subclasses must override %s", "+[HDVisionPrescriptionEntity insertDataObject:withProvenance:inDatabase:persistentID:error:]"}];
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__HDVisionPrescriptionEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke;
  v25[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v25[4] = a1;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDVisionPrescriptionEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2;
  v22[3] = &unk_278613038;
  v23 = v14;
  v24 = v12;
  v16 = v12;
  v17 = v14;
  if ([v13 executeCachedStatementForKey:&insertDataObject_withProvenance_inDatabase_persistentID_error__insertKey_0 error:a7 SQLGenerator:v25 bindingHandler:v22 enumerationHandler:0])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  return v18;
}

id __92__HDVisionPrescriptionEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v2, @"data_id", @"prescription_type", @"verifiable_data", @"left_sphere", @"right_sphere", @"left_cylinder", @"right_cylinder", @"left_axis", @"right_axis", @"left_add_power", @"right_add_power", @"left_vertex_distance", @"right_vertex_distance", @"left_prism_amount", @"right_prism_amount", @"left_prism_angle", @"right_prism_angle", @"left_far_pupillary_distance", @"right_far_pupillary_distance", @"left_near_pupillary_distance", @"right_near_pupillary_distance", @"glasses_description", @"left_base_curve", @"right_base_curve", @"left_contact_diameter", @"right_contact_diameter", @"brand", 0];

  return v3;
}

void __92__HDVisionPrescriptionEntity_insertDataObject_withProvenance_inDatabase_persistentID_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  sqlite3_bind_int64(a2, 2, [*(a1 + 40) prescriptionType]);
  sqlite3_bind_null(a2, 3);
  v4 = [*(a1 + 40) leftSphere];
  if (v4)
  {
    v5 = [*(a1 + 40) leftSphere];
    v6 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v5 doubleValueForUnit:v6];
    sqlite3_bind_double(a2, 4, v7);
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v8 = [*(a1 + 40) rightSphere];
  if (v8)
  {
    v9 = [*(a1 + 40) rightSphere];
    v10 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v9 doubleValueForUnit:v10];
    sqlite3_bind_double(a2, 5, v11);
  }

  else
  {
    sqlite3_bind_null(a2, 5);
  }

  v12 = [*(a1 + 40) leftCylinder];
  if (v12)
  {
    v13 = [*(a1 + 40) leftCylinder];
    v14 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v13 doubleValueForUnit:v14];
    sqlite3_bind_double(a2, 6, v15);
  }

  else
  {
    sqlite3_bind_null(a2, 6);
  }

  v16 = [*(a1 + 40) rightCylinder];
  if (v16)
  {
    v17 = [*(a1 + 40) rightCylinder];
    v18 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v17 doubleValueForUnit:v18];
    sqlite3_bind_double(a2, 7, v19);
  }

  else
  {
    sqlite3_bind_null(a2, 7);
  }

  v20 = [*(a1 + 40) leftAxis];
  if (v20)
  {
    v21 = [*(a1 + 40) leftAxis];
    v22 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [v21 doubleValueForUnit:v22];
    sqlite3_bind_double(a2, 8, v23);
  }

  else
  {
    sqlite3_bind_null(a2, 8);
  }

  v24 = [*(a1 + 40) rightAxis];
  if (v24)
  {
    v25 = [*(a1 + 40) rightAxis];
    v26 = [MEMORY[0x277CCDAB0] radianAngleUnit];
    [v25 doubleValueForUnit:v26];
    sqlite3_bind_double(a2, 9, v27);
  }

  else
  {
    sqlite3_bind_null(a2, 9);
  }

  v28 = [*(a1 + 40) leftAddPower];
  if (v28)
  {
    v29 = [*(a1 + 40) leftAddPower];
    v30 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v29 doubleValueForUnit:v30];
    sqlite3_bind_double(a2, 10, v31);
  }

  else
  {
    sqlite3_bind_null(a2, 10);
  }

  v32 = [*(a1 + 40) rightAddPower];
  if (v32)
  {
    v33 = [*(a1 + 40) rightAddPower];
    v34 = [MEMORY[0x277CCDAB0] diopterUnit];
    [v33 doubleValueForUnit:v34];
    sqlite3_bind_double(a2, 11, v35);
  }

  else
  {
    sqlite3_bind_null(a2, 11);
  }

  v36 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = *(a1 + 40);
    v38 = [v37 leftEye];
    v39 = [v38 vertexDistance];
    if (v39)
    {
      v40 = [v37 leftEye];
      v41 = [v40 vertexDistance];
      v42 = [MEMORY[0x277CCDAB0] meterUnit];
      [v41 doubleValueForUnit:v42];
      sqlite3_bind_double(a2, 12, v43);
    }

    else
    {
      sqlite3_bind_null(a2, 12);
    }

    v45 = [v37 rightEye];
    v46 = [v45 vertexDistance];
    if (v46)
    {
      v47 = [v37 rightEye];
      v48 = [v47 vertexDistance];
      v49 = [MEMORY[0x277CCDAB0] meterUnit];
      [v48 doubleValueForUnit:v49];
      sqlite3_bind_double(a2, 13, v50);
    }

    else
    {
      sqlite3_bind_null(a2, 13);
    }

    v51 = [v37 leftEye];
    v52 = [v51 prism];
    v53 = [v52 amount];
    if (v53)
    {
      v54 = [v37 leftEye];
      v55 = [v54 prism];
      v56 = [v55 amount];
      v57 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
      [v56 doubleValueForUnit:v57];
      sqlite3_bind_double(a2, 14, v58);
    }

    else
    {
      sqlite3_bind_null(a2, 14);
    }

    v59 = [v37 rightEye];
    v60 = [v59 prism];
    v61 = [v60 amount];
    if (v61)
    {
      v62 = [v37 rightEye];
      v63 = [v62 prism];
      v64 = [v63 amount];
      v65 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
      [v64 doubleValueForUnit:v65];
      sqlite3_bind_double(a2, 15, v66);
    }

    else
    {
      sqlite3_bind_null(a2, 15);
    }

    v67 = [v37 leftEye];
    v68 = [v67 prism];
    v69 = [v68 angle];
    if (v69)
    {
      v70 = [v37 leftEye];
      v71 = [v70 prism];
      v72 = [v71 angle];
      v73 = [MEMORY[0x277CCDAB0] radianAngleUnit];
      [v72 doubleValueForUnit:v73];
      sqlite3_bind_double(a2, 16, v74);
    }

    else
    {
      sqlite3_bind_null(a2, 16);
    }

    v75 = [v37 rightEye];
    v76 = [v75 prism];
    v77 = [v76 angle];
    if (v77)
    {
      v78 = [v37 rightEye];
      v79 = [v78 prism];
      v80 = [v79 angle];
      v81 = [MEMORY[0x277CCDAB0] radianAngleUnit];
      [v80 doubleValueForUnit:v81];
      sqlite3_bind_double(a2, 17, v82);
    }

    else
    {
      sqlite3_bind_null(a2, 17);
    }

    v83 = [v37 leftEye];
    v84 = [v83 farPupillaryDistance];
    if (v84)
    {
      v85 = [v37 leftEye];
      v86 = [v85 farPupillaryDistance];
      v87 = [MEMORY[0x277CCDAB0] meterUnit];
      [v86 doubleValueForUnit:v87];
      sqlite3_bind_double(a2, 18, v88);
    }

    else
    {
      sqlite3_bind_null(a2, 18);
    }

    v89 = [v37 rightEye];
    v90 = [v89 farPupillaryDistance];
    if (v90)
    {
      v91 = [v37 rightEye];
      v92 = [v91 farPupillaryDistance];
      v93 = [MEMORY[0x277CCDAB0] meterUnit];
      [v92 doubleValueForUnit:v93];
      sqlite3_bind_double(a2, 19, v94);
    }

    else
    {
      sqlite3_bind_null(a2, 19);
    }

    v95 = [v37 leftEye];
    v96 = [v95 nearPupillaryDistance];
    if (v96)
    {
      v97 = [v37 leftEye];
      v98 = [v97 nearPupillaryDistance];
      v99 = [MEMORY[0x277CCDAB0] meterUnit];
      [v98 doubleValueForUnit:v99];
      sqlite3_bind_double(a2, 20, v100);
    }

    else
    {
      sqlite3_bind_null(a2, 20);
    }

    v101 = [v37 rightEye];
    v102 = [v101 nearPupillaryDistance];
    if (v102)
    {
      v103 = [v37 rightEye];
      v104 = [v103 nearPupillaryDistance];
      v105 = [MEMORY[0x277CCDAB0] meterUnit];
      [v104 doubleValueForUnit:v105];
      sqlite3_bind_double(a2, 21, v106);
    }

    else
    {
      sqlite3_bind_null(a2, 21);
    }

    v44 = 22;
  }

  else
  {
    sqlite3_bind_null(a2, 12);
    sqlite3_bind_null(a2, 13);
    sqlite3_bind_null(a2, 14);
    sqlite3_bind_null(a2, 15);
    sqlite3_bind_null(a2, 16);
    sqlite3_bind_null(a2, 17);
    sqlite3_bind_null(a2, 18);
    sqlite3_bind_null(a2, 19);
    sqlite3_bind_null(a2, 20);
    sqlite3_bind_null(a2, 21);
    sqlite3_bind_null(a2, 22);
    v44 = 23;
  }

  v107 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v133 = *(a1 + 40);
    v108 = [v133 leftEye];
    v109 = [v108 baseCurve];
    if (v109)
    {
      v110 = [v133 leftEye];
      v111 = [v110 baseCurve];
      v112 = [MEMORY[0x277CCDAB0] meterUnit];
      [v111 doubleValueForUnit:v112];
      sqlite3_bind_double(a2, v44, v113);
    }

    else
    {
      sqlite3_bind_null(a2, v44);
    }

    v114 = [v133 rightEye];
    v115 = [v114 baseCurve];
    if (v115)
    {
      v116 = [v133 rightEye];
      v117 = [v116 baseCurve];
      v118 = [MEMORY[0x277CCDAB0] meterUnit];
      [v117 doubleValueForUnit:v118];
      sqlite3_bind_double(a2, v44 + 1, v119);
    }

    else
    {
      sqlite3_bind_null(a2, v44 + 1);
    }

    v120 = [v133 leftEye];
    v121 = [v120 diameter];
    if (v121)
    {
      v122 = [v133 leftEye];
      v123 = [v122 diameter];
      v124 = [MEMORY[0x277CCDAB0] meterUnit];
      [v123 doubleValueForUnit:v124];
      sqlite3_bind_double(a2, v44 + 2, v125);
    }

    else
    {
      sqlite3_bind_null(a2, v44 + 2);
    }

    v126 = [v133 rightEye];
    v127 = [v126 diameter];
    if (v127)
    {
      v128 = [v133 rightEye];
      v129 = [v128 diameter];
      v130 = [MEMORY[0x277CCDAB0] meterUnit];
      [v129 doubleValueForUnit:v130];
      sqlite3_bind_double(a2, v44 + 3, v131);
    }

    else
    {
      sqlite3_bind_null(a2, v44 + 3);
    }

    v132 = [v133 brand];
    sqlite3_bind_text(a2, v44 + 4, [v132 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(a2, v44);
    sqlite3_bind_null(a2, v44 + 1);
    sqlite3_bind_null(a2, v44 + 2);
    sqlite3_bind_null(a2, v44 + 3);

    sqlite3_bind_null(a2, v44 + 4);
  }
}

+ (BOOL)addCodableObject:(id)a3 toCollection:(id)a4
{
  if (a3)
  {
    [a4 addVisionSamples:a3];
  }

  return a3 != 0;
}

+ (id)entityEncoderForProfile:(id)a3 transaction:(id)a4 purpose:(int64_t)a5 encodingOptions:(id)a6 authorizationFilter:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [(HDEntityEncoder *)[HDVisionSampleEntityEncoder alloc] initWithHealthEntityClass:objc_opt_class() profile:v14 transaction:v13 purpose:a5 encodingOptions:v12 authorizationFilter:v11];

  return v15;
}

@end