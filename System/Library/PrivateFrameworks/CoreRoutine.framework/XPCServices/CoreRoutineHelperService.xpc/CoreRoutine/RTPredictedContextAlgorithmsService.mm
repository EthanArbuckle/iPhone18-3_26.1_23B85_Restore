@interface RTPredictedContextAlgorithmsService
- (RTPredictedContextAlgorithmsService)init;
- (void)_computeWithInputSignals:(id)signals handler:(id)handler;
- (void)computeWithInputSignals:(id)signals handler:(id)handler;
- (void)interruptComputeWithError:(id)error;
@end

@implementation RTPredictedContextAlgorithmsService

- (RTPredictedContextAlgorithmsService)init
{
  v19.receiver = self;
  v19.super_class = RTPredictedContextAlgorithmsService;
  v2 = [(RTPredictedContextAlgorithmsService *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTPredictedContextAlgorithmsService *)v4 UTF8String];
    }

    else
    {
      v7 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v4];
      uTF8String = [v7 UTF8String];
    }

    v8 = dispatch_queue_create(uTF8String, v5);

    queue = v4->_queue;
    v4->_queue = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [NSString stringWithFormat:@"%@.computeState", v11];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String2 = [v12 UTF8String];
    }

    else
    {
      v15 = [NSString stringWithFormat:@"%@-%p", objc_opt_class(), v12];
      uTF8String2 = [v15 UTF8String];
    }

    v16 = dispatch_queue_create(uTF8String2, v13);
    computeStateQueue = v4->_computeStateQueue;
    v4->_computeStateQueue = v16;
  }

  return v3;
}

- (void)computeWithInputSignals:(id)signals handler:(id)handler
{
  signalsCopy = signals;
  handlerCopy = handler;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@, %@, received computeWithInputSignals request in ContextAlgorithmsService", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v28 = 0;
  computeStateQueue = [(RTPredictedContextAlgorithmsService *)self computeStateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028784;
  block[3] = &unk_1000A8D48;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(computeStateQueue, block);

  if (*(*&buf[8] + 24) == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v14 = sub_1000011A0(&qword_1000B29E8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *v23 = 138412546;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@, %@, Skipping training: compute already in progress", v23, 0x16u);
      }
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
  }

  else
  {
    queue = [(RTPredictedContextAlgorithmsService *)self queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100028814;
    v19[3] = &unk_1000A8D70;
    v19[4] = self;
    v20 = signalsCopy;
    v21 = handlerCopy;
    dispatch_async(queue, v19);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_computeWithInputSignals:(id)signals handler:(id)handler
{
  signalsCopy = signals;
  handlerCopy = handler;
  selfCopy = self;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [NSString stringWithFormat:@"%@-%@", v7, v8];
  [v9 UTF8String];
  v143 = os_transaction_create();

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v10 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v118 = objc_opt_class();
      v119 = NSStringFromClass(v118);
      v120 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v119;
      *&buf[12] = 2112;
      *&buf[14] = v120;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  v186 = 0;
  v187 = &v186;
  v188 = 0x2020000000;
  v189 = 0;
  v182 = 0;
  v183 = &v182;
  v184 = 0x2020000000;
  v185 = 0;
  computeStateQueue = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029EA4;
  block[3] = &unk_1000A8D98;
  block[4] = selfCopy;
  block[5] = &v182;
  block[6] = &v186;
  dispatch_sync(computeStateQueue, block);

  if (*(v183 + 24) == 1)
  {
    v12 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v123 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v122;
      *&buf[12] = 2112;
      *&buf[14] = v123;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@, %@, Aborting compute: computeState unexpectedly nil", buf, 0x16u);
    }

    computeStateQueue2 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_100029F38;
    v180[3] = &unk_1000A8B40;
    v180[4] = selfCopy;
    dispatch_sync(computeStateQueue2, v180);

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    goto LABEL_70;
  }

  if (*(v187 + 24) == 1)
  {
    v14 = selfCopy;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v15 = sub_1000011A0(&qword_1000B29E8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%@, %@, Skipping training: receivedInterruptRequest was set", buf, 0x16u);
      }

      v14 = selfCopy;
    }

    computeStateQueue3 = [(RTPredictedContextAlgorithmsService *)v14 computeStateQueue];
    v179[0] = _NSConcreteStackBlock;
    v179[1] = 3221225472;
    v179[2] = sub_100029F44;
    v179[3] = &unk_1000A8B40;
    v179[4] = v14;
    dispatch_sync(computeStateQueue3, v179);

    handlerCopy[2](handlerCopy, &__NSArray0__struct, 0);
    goto LABEL_70;
  }

  v20 = +[NSDate date];
  v178 = 0;
  v142 = [RTPredictedContextUtility readAlgorithmStateWithError:&v178];
  v140 = v178;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v21 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = NSStringFromSelector(a2);
      data = [v142 data];
      v26 = [data length];
      v27 = +[NSDate date];
      [v27 timeIntervalSinceDate:v20];
      v29 = v28;
      +[RTRuntime footprint];
      *buf = 138413570;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2048;
      v198 = vcvtd_n_f64_u64(v26, 0x14uLL);
      *v199 = 2112;
      *&v199[2] = v140;
      *&v199[10] = 2048;
      *&v199[12] = v29;
      v200 = 2048;
      v201 = v30;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%@, %@, Step 1: readModel, size, %.6f MB, error %@, latency, %.2f, footprint, %.4f MB", buf, 0x3Eu);
    }
  }

  v31 = +[NSDate date];

  v32 = objc_alloc_init(PCAlgorithms);
  [(RTPredictedContextAlgorithmsService *)selfCopy setAlgorithms:v32];

  v33 = objc_opt_new();
  v34 = objc_opt_new();
  [v33 setLifecycleEvent:v34];

  lifecycleEvent = [v33 lifecycleEvent];
  [lifecycleEvent setType:0];

  computeStateQueue4 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v176[0] = _NSConcreteStackBlock;
  v176[1] = 3221225472;
  v176[2] = sub_100029F50;
  v176[3] = &unk_1000A8B68;
  v176[4] = selfCopy;
  v132 = v33;
  v177 = v132;
  dispatch_sync(computeStateQueue4, v176);

  if (v142)
  {
    algorithms = [(RTPredictedContextAlgorithmsService *)selfCopy algorithms];
    v175 = 0;
    [algorithms applyAlgorithmState:v142 outError:&v175];
    v136 = v175;

    v38 = objc_opt_new();
    v39 = objc_opt_new();
    [v38 setApplyStateEvent:v39];

    applyStateEvent = [v38 applyStateEvent];
    [applyStateEvent setInState:v142];

    computeStateQueue5 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
    v173[0] = _NSConcreteStackBlock;
    v173[1] = 3221225472;
    v173[2] = sub_100029FB4;
    v173[3] = &unk_1000A8B68;
    v173[4] = selfCopy;
    v42 = v38;
    v174 = v42;
    dispatch_sync(computeStateQueue5, v173);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v43 = sub_1000011A0(&qword_1000B29E8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        v47 = +[NSDate date];
        [v47 timeIntervalSinceDate:v31];
        v49 = v48;
        +[RTRuntime footprint];
        *buf = 138413314;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2112;
        v198 = *&v136;
        *v199 = 2048;
        *&v199[2] = v49;
        *&v199[10] = 2048;
        *&v199[12] = v50;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%@, %@, Step 2: apply the current algorithm state, error %@, latency, %.2f, footprint, %.4f MB", buf, 0x34u);
      }
    }
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v136 = 0;
      goto LABEL_30;
    }

    v42 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v52;
      *&buf[12] = 2112;
      *&buf[14] = v53;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%@, %@, Step 2: Did not apply the current algorithm state because it was null", buf, 0x16u);
    }

    v136 = 0;
  }

LABEL_30:
  v54 = +[NSDate date];

  algorithms2 = [(RTPredictedContextAlgorithmsService *)selfCopy algorithms];
  v172 = 0;
  v56 = [algorithms2 computeWithInputSignals:signalsCopy outError:&v172];
  v139 = v172;

  v57 = objc_opt_new();
  v58 = objc_opt_new();
  [v57 setComputeEvent:v58];

  computeEvent = [v57 computeEvent];
  [computeEvent setInput:signalsCopy];

  v168 = 0;
  v169 = &v168;
  v170 = 0x2020000000;
  v171 = 0;
  v164 = 0;
  v165 = &v164;
  v166 = 0x2020000000;
  v167 = 0;
  computeStateQueue6 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v163[0] = _NSConcreteStackBlock;
  v163[1] = 3221225472;
  v163[2] = sub_10002A018;
  v163[3] = &unk_1000A8D98;
  v163[5] = &v168;
  v163[4] = selfCopy;
  v163[6] = &v164;
  dispatch_sync(computeStateQueue6, v163);

  v61 = *(v169 + 24);
  computeEvent2 = [v57 computeEvent];
  [computeEvent2 setReceivedInterruptRequest:v61];

  LODWORD(v61) = *(v165 + 24);
  computeEvent3 = [v57 computeEvent];
  v64 = computeEvent3;
  if (v61)
  {
    v65 = 2;
  }

  else
  {
    v65 = v56;
  }

  [computeEvent3 setCompletionStatus:v65];

  computeStateQueue7 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v161[0] = _NSConcreteStackBlock;
  v161[1] = 3221225472;
  v161[2] = sub_10002A098;
  v161[3] = &unk_1000A8B68;
  v161[4] = selfCopy;
  v131 = v57;
  v162 = v131;
  dispatch_sync(computeStateQueue7, v161);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v67 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      v70 = NSStringFromSelector(a2);
      if (v56)
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      v72 = +[NSDate date];
      [v72 timeIntervalSinceDate:v54];
      v74 = v73;
      +[RTRuntime footprint];
      *buf = 138413570;
      *&buf[4] = v69;
      *&buf[12] = 2112;
      *&buf[14] = v70;
      *&buf[22] = 2112;
      v198 = *&v139;
      *v199 = 2112;
      *&v199[2] = v71;
      *&v199[10] = 2048;
      *&v199[12] = v74;
      v200 = 2048;
      v201 = v75;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%@, %@, Step 3: computeWithInputSignals(train the model), error %@, computeSucceeded, %@, latency, %.2f, footprint, %.4f MB", buf, 0x3Eu);
    }
  }

  v76 = +[NSDate date];

  algorithms3 = [(RTPredictedContextAlgorithmsService *)selfCopy algorithms];
  v159 = 0;
  v160 = 0;
  [algorithms3 retrieveAlgorithmState:&v160 outError:&v159];
  v141 = v160;
  v138 = v159;

  v78 = objc_opt_new();
  v79 = objc_opt_new();
  [v78 setRetrieveStateEvent:v79];

  retrieveStateEvent = [v78 retrieveStateEvent];
  [retrieveStateEvent setOutState:v141];

  computeStateQueue8 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v157[0] = _NSConcreteStackBlock;
  v157[1] = 3221225472;
  v157[2] = sub_10002A0FC;
  v157[3] = &unk_1000A8B68;
  v157[4] = selfCopy;
  v130 = v78;
  v158 = v130;
  dispatch_sync(computeStateQueue8, v157);

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v82 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
    {
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      v85 = NSStringFromSelector(a2);
      v86 = +[NSDate date];
      [v86 timeIntervalSinceDate:v76];
      v88 = v87;
      +[RTRuntime footprint];
      *buf = 138413314;
      *&buf[4] = v84;
      *&buf[12] = 2112;
      *&buf[14] = v85;
      *&buf[22] = 2112;
      v198 = *&v138;
      *v199 = 2048;
      *&v199[2] = v88;
      *&v199[10] = 2048;
      *&v199[12] = v89;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%@, %@, Step 4: retrieve the Algorithm State, error %@, latency, %.2f, footprint, %.4f MB", buf, 0x34u);
    }
  }

  v133 = +[NSDate date];

  [v141 data];
  v134 = v156 = 0;
  v90 = [RTPredictedContextUtility writeModel:"writeModel:error:" error:?];
  v137 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v91 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v92 = objc_opt_class();
      v93 = NSStringFromClass(v92);
      v94 = NSStringFromSelector(a2);
      v95 = [v134 length];
      if (v90)
      {
        v96 = @"YES";
      }

      else
      {
        v96 = @"NO";
      }

      v97 = +[NSDate date];
      [v97 timeIntervalSinceDate:v133];
      v99 = v98;
      +[RTRuntime footprint];
      *buf = 138413826;
      *&buf[4] = v93;
      *&buf[12] = 2112;
      *&buf[14] = v94;
      *&buf[22] = 2048;
      v198 = vcvtd_n_f64_u64(v95, 0x14uLL);
      *v199 = 2112;
      *&v199[2] = v96;
      *&v199[10] = 2112;
      *&v199[12] = v137;
      v200 = 2048;
      v201 = v99;
      v202 = 2048;
      v203 = v100;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "%@, %@, Step 5: writeModel, size, %.6f MB, success, %@, error %@, latency, %.2f, footprint, %.4f MB", buf, 0x48u);
    }
  }

  v101 = objc_opt_new();
  v102 = objc_opt_new();
  [v101 setLifecycleEvent:v102];

  lifecycleEvent2 = [v101 lifecycleEvent];
  [lifecycleEvent2 setType:1];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v198 = COERCE_DOUBLE(sub_100001210);
  *v199 = sub_10002A160;
  *&v199[8] = 0;
  computeStateQueue9 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v153[0] = _NSConcreteStackBlock;
  v153[1] = 3221225472;
  v153[2] = sub_10002A168;
  v153[3] = &unk_1000A8DC0;
  v153[4] = selfCopy;
  v129 = v101;
  v154 = v129;
  v155 = buf;
  dispatch_sync(computeStateQueue9, v153);

  v128 = v136;
  v105 = _RTSafeArray();
  v135 = _RTMultiErrorCreate();

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v106 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      v124 = objc_opt_class();
      v125 = NSStringFromClass(v124);
      v126 = NSStringFromSelector(a2);
      v127 = [*(*&buf[8] + 40) count];
      *v191 = 138412802;
      v192 = v125;
      v193 = 2112;
      v194 = v126;
      v195 = 2048;
      v196 = v127;
      _os_log_debug_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEBUG, "%@, %@, %lu interaction records", v191, 0x20u);
    }
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v107 = *(*&buf[8] + 40);
  v108 = [v107 countByEnumeratingWithState:&v149 objects:v190 count:16];
  if (v108)
  {
    v109 = *v150;
    do
    {
      v110 = 0;
      do
      {
        if (*v150 != v109)
        {
          objc_enumerationMutation(v107);
        }

        interactionCommand = [*(*(&v149 + 1) + 8 * v110) interactionCommand];
        if (interactionCommand >= 7)
        {
          v128 = interactionCommand;
          v112 = [NSString stringWithFormat:@"(unknown: %i)"];
        }

        else
        {
          v112 = off_1000A8E30[interactionCommand];
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v113 = sub_1000011A0(&qword_1000B29E8);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
          {
            v114 = objc_opt_class();
            v115 = NSStringFromClass(v114);
            v116 = NSStringFromSelector(a2);
            *v191 = 138412802;
            v192 = v115;
            v193 = 2112;
            v194 = v116;
            v195 = 2112;
            v196 = v112;
            _os_log_debug_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEBUG, "%@, %@, InteractionRecord command in algoService, %@", v191, 0x20u);
          }
        }

        v110 = v110 + 1;
      }

      while (v108 != v110);
      v108 = [v107 countByEnumeratingWithState:&v149 objects:v190 count:16];
    }

    while (v108);
  }

  [(RTPredictedContextAlgorithmsService *)selfCopy setAlgorithms:0];
  computeStateQueue10 = [(RTPredictedContextAlgorithmsService *)selfCopy computeStateQueue];
  v148[0] = _NSConcreteStackBlock;
  v148[1] = 3221225472;
  v148[2] = sub_10002A210;
  v148[3] = &unk_1000A8B40;
  v148[4] = selfCopy;
  dispatch_sync(computeStateQueue10, v148);

  (handlerCopy)[2](handlerCopy, *(*&buf[8] + 40), v135);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v164, 8);
  _Block_object_dispose(&v168, 8);

LABEL_70:
  _Block_object_dispose(&v182, 8);
  _Block_object_dispose(&v186, 8);
}

- (void)interruptComputeWithError:(id)error
{
  errorCopy = error;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = sub_1000011A0(&qword_1000B29E8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v37 = v8;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@, %@, received interruptComputeWithError request in ContextAlgorithmsService", buf, 0x16u);
    }
  }

  computeStateQueue = [(RTPredictedContextAlgorithmsService *)self computeStateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A69C;
  block[3] = &unk_1000A8DE8;
  block[4] = self;
  block[5] = a2;
  dispatch_sync(computeStateQueue, block);

  algorithms = [(RTPredictedContextAlgorithmsService *)self algorithms];

  if (algorithms)
  {
    algorithms2 = [(RTPredictedContextAlgorithmsService *)self algorithms];
    v34 = 0;
    v13 = [algorithms2 interruptComputeWithError:&v34];
    v14 = v34;

    computeStateQueue2 = [(RTPredictedContextAlgorithmsService *)self computeStateQueue];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002A80C;
    v32[3] = &unk_1000A8E10;
    v32[4] = self;
    v33 = v13;
    dispatch_sync(computeStateQueue2, v32);

    v16 = objc_opt_new();
    v17 = objc_opt_new();
    [v16 setInterruptRequest:v17];

    computeStateQueue3 = [(RTPredictedContextAlgorithmsService *)self computeStateQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002A860;
    v30[3] = &unk_1000A8B68;
    v30[4] = self;
    v19 = v16;
    v31 = v19;
    dispatch_sync(computeStateQueue3, v30);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v20 = sub_1000011A0(&qword_1000B29E8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        v24 = v23;
        v25 = @"NO";
        *buf = 138413058;
        v37 = v22;
        v38 = 2112;
        if (v13)
        {
          v25 = @"YES";
        }

        v39 = v23;
        v40 = 2112;
        v41 = v25;
        v42 = 2112;
        v43 = v14;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@, %@, interrupt compute, didInterrupt, %@, error, %@", buf, 0x2Au);
      }
    }

    if (errorCopy)
    {
LABEL_13:
      errorCopy[2](errorCopy, v14);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v26 = sub_1000011A0(&qword_1000B29E8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        v29 = NSStringFromSelector(a2);
        *buf = 138412546;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@, %@, self.currentAlgorithms is nil, skipping interrupt", buf, 0x16u);
      }
    }

    v14 = 0;
    if (errorCopy)
    {
      goto LABEL_13;
    }
  }
}

@end