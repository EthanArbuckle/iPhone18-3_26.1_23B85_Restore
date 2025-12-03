@interface BABreathingDisturbanceAnalyzer
+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval;
@end

@implementation BABreathingDisturbanceAnalyzer

+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval
{
  intervalCopy = interval;
  v89 = a5;
  retstr->var0 = &off_1000149D0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = intervalCopy;
  v8 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
  if (v8)
  {
    v9 = *v102;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v102 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v101 + 1) + 8 * i);
        v12 = sub_100002E38();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          quantity = [v11 quantity];
          v14 = +[HKUnit countUnit];
          [quantity doubleValueForUnit:v14];
          v16 = v15;
          startDate = [v11 startDate];
          endDate = [v11 endDate];
          uUID = [v11 UUID];
          *buf = 134546435;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = startDate;
          *&buf[22] = 2114;
          *&buf[24] = endDate;
          LOWORD(v110) = 2114;
          *(&v110 + 2) = uUID;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{sensitive}lf for %{public}@ - %{public}@ for %{public}@", buf, 0x2Au);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v101 objects:v112 count:16];
    }

    while (v8);
  }

  if ([obj count] < 0x1F)
  {
    startDate2 = [v89 startDate];
    endDate2 = [v89 endDate];
    v23 = [startDate2 isEqualToDate:endDate2];

    if (v23)
    {
      v24 = sub_100002E38();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        startDate3 = [v89 startDate];
        endDate3 = [v89 endDate];
        sub_10000C3EC(startDate3, endDate3, buf, v24);
      }
    }

    else
    {
      __src = 0;
      v99 = 0;
      v100 = 0;
      sub_100002BDC(&__src, [obj count]);
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v90 = obj;
      v27 = [v90 countByEnumeratingWithState:&v94 objects:v111 count:16];
      if (v27)
      {
        v28 = *v95;
        v29 = HKQuantityTypeIdentifierAppleSleepingBreathingDisturbances;
LABEL_20:
        v30 = 0;
        while (1)
        {
          if (*v95 != v28)
          {
            objc_enumerationMutation(v90);
          }

          v31 = *(*(&v94 + 1) + 8 * v30);
          quantity2 = [v31 quantity];
          v33 = +[HKUnit countUnit];
          [quantity2 doubleValueForUnit:v33];
          v35 = v34;

          quantityType = [v31 quantityType];
          identifier = [quantityType identifier];
          v38 = identifier == v29;

          if (!v38)
          {
            v83 = sub_100002E38();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              quantityType2 = [v31 quantityType];
              identifier2 = [quantityType2 identifier];
              uUID2 = [v31 UUID];
              *buf = 138543618;
              *&buf[4] = identifier2;
              *&buf[12] = 2114;
              *&buf[14] = uUID2;
              _os_log_fault_impl(&_mh_execute_header, v83, OS_LOG_TYPE_FAULT, "Invalid HealthKit type (%{public}@) for sample %{public}@.", buf, 0x16u);
            }

            goto LABEL_54;
          }

          if (v35 < 0.0)
          {
            v83 = sub_100002E38();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C364();
            }

            goto LABEL_54;
          }

          if (v35 > 130.0)
          {
            v83 = sub_100002E38();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C320();
            }

            goto LABEL_54;
          }

          endDate4 = [v31 endDate];
          startDate4 = [v89 startDate];
          v41 = [endDate4 compare:startDate4] == 1;

          if (!v41)
          {
            break;
          }

          endDate5 = [v31 endDate];
          endDate6 = [v89 endDate];
          v44 = [endDate5 compare:endDate6] == 1;

          if (v44)
          {
            v83 = sub_100002E38();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              sub_10000C2DC();
            }

LABEL_54:

            goto LABEL_55;
          }

          startDate5 = [v31 startDate];
          [startDate5 timeIntervalSinceReferenceDate];
          v47 = v46;
          endDate7 = [v31 endDate];
          [endDate7 timeIntervalSinceReferenceDate];
          v50 = v35;
          v51 = v99;
          if (v99 >= v100)
          {
            v53 = __src;
            v54 = v99 - __src;
            v55 = 0xAAAAAAAAAAAAAAABLL * ((v99 - __src) >> 3);
            v56 = v55 + 1;
            if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_100002CD0();
            }

            if (0x5555555555555556 * ((v100 - __src) >> 3) > v56)
            {
              v56 = 0x5555555555555556 * ((v100 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v100 - __src) >> 3) >= 0x555555555555555)
            {
              v56 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v56)
            {
              sub_100002D78(&__src, v56);
            }

            v57 = 8 * ((v99 - __src) >> 3);
            *v57 = v50;
            *(v57 + 8) = v47;
            *(v57 + 16) = v49;
            v52 = 24 * v55 + 24;
            v58 = (24 * v55 - v54);
            memcpy((v57 - v54), v53, v54);
            v59 = __src;
            __src = v58;
            v99 = v52;
            v100 = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          else
          {
            *v99 = v50;
            v52 = (v51 + 6);
            *(v51 + 1) = v47;
            *(v51 + 2) = v49;
          }

          v99 = v52;

          if (v27 == ++v30)
          {
            v27 = [v90 countByEnumeratingWithState:&v94 objects:v111 count:16];
            if (v27)
            {
              goto LABEL_20;
            }

            goto LABEL_41;
          }
        }

        v83 = sub_100002E38();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          [v31 UUID];
          objc_claimAutoreleasedReturnValue();
          sub_10000C298();
        }

        goto LABEL_54;
      }

LABEL_41:

      NebulaNotification::Processor::Processor(&v93);
      v110 = 0u;
      memset(buf, 0, sizeof(buf));
      NebulaNotification::Processor::process(&__src, buf, &v93);
      v107[0] = @"notification_status";
      v60 = [NSNumber numberWithUnsignedChar:buf[4]];
      v108[0] = v60;
      v107[1] = @"percent_bd_at_least_10";
      LODWORD(v61) = *&buf[8];
      v91 = [NSNumber numberWithFloat:v61];
      v108[1] = v91;
      v107[2] = @"percent_bd_at_least_11";
      LODWORD(v62) = *&buf[12];
      v63 = [NSNumber numberWithFloat:v62];
      v108[2] = v63;
      v107[3] = @"percent_bd_at_least_12";
      LODWORD(v64) = *&buf[16];
      v65 = [NSNumber numberWithFloat:v64];
      v108[3] = v65;
      v107[4] = @"percent_bd_at_least_13";
      LODWORD(v66) = *&buf[20];
      v67 = [NSNumber numberWithFloat:v66];
      v108[4] = v67;
      v107[5] = @"bd_count";
      v68 = [NSNumber numberWithInt:*&buf[24]];
      v108[5] = v68;
      v107[6] = @"bd_median";
      LODWORD(v69) = *&buf[28];
      v70 = [NSNumber numberWithFloat:v69];
      v108[6] = v70;
      v107[7] = @"bd_mean";
      LODWORD(v71) = v110;
      v72 = [NSNumber numberWithFloat:v71];
      v108[7] = v72;
      v107[8] = @"bd_standard_deviation";
      LODWORD(v73) = DWORD1(v110);
      v74 = [NSNumber numberWithFloat:v73];
      v108[8] = v74;
      v107[9] = @"bd_maximum";
      LODWORD(v75) = DWORD2(v110);
      v76 = [NSNumber numberWithFloat:v75];
      v108[9] = v76;
      v107[10] = @"bd_minimum";
      LODWORD(v77) = HIDWORD(v110);
      v78 = [NSNumber numberWithFloat:v77];
      v108[10] = v78;
      v79 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:11];
      var1 = retstr->var1;
      retstr->var1 = v79;

      v81 = buf[0];
      retstr->var2 = buf[0];
      v82 = sub_100002E38();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v105 = 67436801;
        v106 = v81;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Algs result: %{sensitive}u", v105, 8u);
      }

      NebulaNotification::Processor::~Processor(&v93);
LABEL_55:
      if (__src)
      {
        v99 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v20 = sub_100002E38();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_10000C45C(buf, [obj count], v20);
    }
  }

  return result;
}

@end