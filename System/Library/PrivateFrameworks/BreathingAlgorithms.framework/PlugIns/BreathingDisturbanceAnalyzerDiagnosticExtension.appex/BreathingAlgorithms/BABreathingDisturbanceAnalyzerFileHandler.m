@interface BABreathingDisturbanceAnalyzerFileHandler
+ (id)filePath:(id)a3 withPrefixFilename:(id)a4;
+ (void)writeAnalysisToJsonFile:(BABreathingDisturbanceAnalysis *)a3 withOutputFilePath:(id)a4;
+ (void)writeSamplesToJsonFile:(id)a3 withDateInterval:(id)a4 withOutputFilePath:(id)a5;
@end

@implementation BABreathingDisturbanceAnalyzerFileHandler

+ (id)filePath:(id)a3 withPrefixFilename:(id)a4
{
  v5 = a3;
  v6 = [a4 stringByAppendingString:@"-breathing-disturbance.json"];
  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

+ (void)writeSamplesToJsonFile:(id)a3 withDateInterval:(id)a4 withOutputFilePath:(id)a5
{
  a3;
  v10 = a4;
  a5;
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v12[0] = 0;
  v13 = 0;
  sub_1000081DC(v12);
  sub_1000081DC(v12);
  [v10 startDate];
  v8 = [v7 stringFromDate:objc_claimAutoreleasedReturnValue()];
  v9 = v8;
  v14 = [v8 UTF8String];
  sub_1000090B4(v11);
}

+ (void)writeAnalysisToJsonFile:(BABreathingDisturbanceAnalysis *)a3 withOutputFilePath:(id)a4
{
  v5 = a4;
  v104[0] = 0;
  v105 = 0;
  sub_1000081DC(v104);
  sub_1000081DC(v104);
  [a3->var0 doubleValue];
  v102[0] = 7;
  v103 = v6;
  sub_1000081DC(v102);
  sub_1000081DC(v102);
  v7 = sub_100003934(v104, "algorithmVersion");
  sub_1000081DC(v102);
  v8 = *v7;
  *v7 = v102[0];
  v102[0] = v8;
  v9 = *(v7 + 8);
  *(v7 + 8) = v103;
  v103 = v9;
  sub_1000081DC(v7);
  sub_1000081DC(v102);
  sub_100008294(&v103, v102[0]);
  var2 = a3->var2;
  v100[0] = 4;
  v101 = var2;
  sub_1000081DC(v100);
  sub_1000081DC(v100);
  v11 = sub_100003934(v104, "sleepApneaDetected");
  sub_1000081DC(v100);
  v12 = *v11;
  *v11 = v100[0];
  v100[0] = v12;
  v13 = *(v11 + 8);
  *(v11 + 8) = v101;
  v101 = v13;
  sub_1000081DC(v11);
  sub_1000081DC(v100);
  sub_100008294(&v101, v100[0]);
  v14 = [a3->var1 objectForKeyedSubscript:@"notification_status"];
  v98[0] = 5;
  v99 = [v14 intValue];
  sub_1000081DC(v98);
  sub_1000081DC(v98);
  v15 = sub_100003934(v104, "coreAnalytics");
  v16 = sub_100003934(v15, "notification_status");
  sub_1000081DC(v98);
  v17 = *v16;
  *v16 = v98[0];
  v98[0] = v17;
  v18 = *(v16 + 8);
  *(v16 + 8) = v99;
  v99 = v18;
  sub_1000081DC(v16);
  sub_1000081DC(v98);
  sub_100008294(&v99, v98[0]);

  v19 = [a3->var1 objectForKeyedSubscript:@"percent_bd_at_least_10"];
  [v19 floatValue];
  v96[0] = 7;
  v97 = v20;
  sub_1000081DC(v96);
  sub_1000081DC(v96);
  v21 = sub_100003934(v104, "coreAnalytics");
  v22 = sub_100003934(v21, "percent_bd_at_least_10");
  sub_1000081DC(v96);
  v23 = *v22;
  *v22 = v96[0];
  v96[0] = v23;
  v24 = *(v22 + 8);
  *(v22 + 8) = v97;
  v97 = v24;
  sub_1000081DC(v22);
  sub_1000081DC(v96);
  sub_100008294(&v97, v96[0]);

  v25 = [a3->var1 objectForKeyedSubscript:@"percent_bd_at_least_11"];
  [v25 floatValue];
  v94[0] = 7;
  v95 = v26;
  sub_1000081DC(v94);
  sub_1000081DC(v94);
  v27 = sub_100003934(v104, "coreAnalytics");
  v28 = sub_100003934(v27, "percent_bd_at_least_11");
  sub_1000081DC(v94);
  v29 = *v28;
  *v28 = v94[0];
  v94[0] = v29;
  v30 = *(v28 + 8);
  *(v28 + 8) = v95;
  v95 = v30;
  sub_1000081DC(v28);
  sub_1000081DC(v94);
  sub_100008294(&v95, v94[0]);

  v31 = [a3->var1 objectForKeyedSubscript:@"percent_bd_at_least_12"];
  [v31 floatValue];
  v92[0] = 7;
  v93 = v32;
  sub_1000081DC(v92);
  sub_1000081DC(v92);
  v33 = sub_100003934(v104, "coreAnalytics");
  v34 = sub_100003934(v33, "percent_bd_at_least_12");
  sub_1000081DC(v92);
  v35 = *v34;
  *v34 = v92[0];
  v92[0] = v35;
  v36 = *(v34 + 8);
  *(v34 + 8) = v93;
  v93 = v36;
  sub_1000081DC(v34);
  sub_1000081DC(v92);
  sub_100008294(&v93, v92[0]);

  v37 = [a3->var1 objectForKeyedSubscript:@"percent_bd_at_least_13"];
  [v37 floatValue];
  v90[0] = 7;
  v91 = v38;
  sub_1000081DC(v90);
  sub_1000081DC(v90);
  v39 = sub_100003934(v104, "coreAnalytics");
  v40 = sub_100003934(v39, "percent_bd_at_least_13");
  sub_1000081DC(v90);
  v41 = *v40;
  *v40 = v90[0];
  v90[0] = v41;
  v42 = *(v40 + 8);
  *(v40 + 8) = v91;
  v91 = v42;
  sub_1000081DC(v40);
  sub_1000081DC(v90);
  sub_100008294(&v91, v90[0]);

  v43 = [a3->var1 objectForKeyedSubscript:@"bd_count"];
  v88[0] = 5;
  v89 = [v43 intValue];
  sub_1000081DC(v88);
  sub_1000081DC(v88);
  v44 = sub_100003934(v104, "coreAnalytics");
  v45 = sub_100003934(v44, "bd_count");
  sub_1000081DC(v88);
  v46 = *v45;
  *v45 = v88[0];
  v88[0] = v46;
  v47 = *(v45 + 8);
  *(v45 + 8) = v89;
  v89 = v47;
  sub_1000081DC(v45);
  sub_1000081DC(v88);
  sub_100008294(&v89, v88[0]);

  v48 = [a3->var1 objectForKeyedSubscript:@"bd_median"];
  [v48 floatValue];
  v86[0] = 7;
  v87 = v49;
  sub_1000081DC(v86);
  sub_1000081DC(v86);
  v50 = sub_100003934(v104, "coreAnalytics");
  v51 = sub_100003934(v50, "bd_median");
  sub_1000081DC(v86);
  v52 = *v51;
  *v51 = v86[0];
  v86[0] = v52;
  v53 = *(v51 + 8);
  *(v51 + 8) = v87;
  v87 = v53;
  sub_1000081DC(v51);
  sub_1000081DC(v86);
  sub_100008294(&v87, v86[0]);

  v54 = [a3->var1 objectForKeyedSubscript:@"bd_mean"];
  [v54 floatValue];
  v84[0] = 7;
  v85 = v55;
  sub_1000081DC(v84);
  sub_1000081DC(v84);
  v56 = sub_100003934(v104, "coreAnalytics");
  v57 = sub_100003934(v56, "bd_mean");
  sub_1000081DC(v84);
  v58 = *v57;
  *v57 = v84[0];
  v84[0] = v58;
  v59 = *(v57 + 8);
  *(v57 + 8) = v85;
  v85 = v59;
  sub_1000081DC(v57);
  sub_1000081DC(v84);
  sub_100008294(&v85, v84[0]);

  v60 = [a3->var1 objectForKeyedSubscript:@"bd_standard_deviation"];
  [v60 floatValue];
  v82[0] = 7;
  v83 = v61;
  sub_1000081DC(v82);
  sub_1000081DC(v82);
  v62 = sub_100003934(v104, "coreAnalytics");
  v63 = sub_100003934(v62, "bd_standard_deviation");
  sub_1000081DC(v82);
  v64 = *v63;
  *v63 = v82[0];
  v82[0] = v64;
  v65 = *(v63 + 8);
  *(v63 + 8) = v83;
  v83 = v65;
  sub_1000081DC(v63);
  sub_1000081DC(v82);
  sub_100008294(&v83, v82[0]);

  v66 = [a3->var1 objectForKeyedSubscript:@"bd_maximum"];
  [v66 floatValue];
  v80[0] = 7;
  v81 = v67;
  sub_1000081DC(v80);
  sub_1000081DC(v80);
  v68 = sub_100003934(v104, "coreAnalytics");
  v69 = sub_100003934(v68, "bd_maximum");
  sub_1000081DC(v80);
  v70 = *v69;
  *v69 = v80[0];
  v80[0] = v70;
  v71 = *(v69 + 8);
  *(v69 + 8) = v81;
  v81 = v71;
  sub_1000081DC(v69);
  sub_1000081DC(v80);
  sub_100008294(&v81, v80[0]);

  v72 = [a3->var1 objectForKeyedSubscript:@"bd_minimum"];
  [v72 floatValue];
  v78[0] = 7;
  v79 = v73;
  sub_1000081DC(v78);
  sub_1000081DC(v78);
  v74 = sub_100003934(v104, "coreAnalytics");
  v75 = sub_100003934(v74, "bd_minimum");
  sub_1000081DC(v78);
  v76 = *v75;
  *v75 = v78[0];
  v78[0] = v76;
  v77 = *(v75 + 8);
  *(v75 + 8) = v79;
  v79 = v77;
  sub_1000081DC(v75);
  sub_1000081DC(v78);
  sub_100008294(&v79, v78[0]);

  sub_100003CB4(v104, v5);
}

@end