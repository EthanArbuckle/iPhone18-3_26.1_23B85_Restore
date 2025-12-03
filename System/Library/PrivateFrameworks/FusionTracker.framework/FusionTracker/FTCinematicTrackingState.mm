@interface FTCinematicTrackingState
+ (id)stateWithTracker:(shared_ptr<ft:(shared_ptr<ft:(id)tracker :Frame>)a4 :CinematicTracker>)a3 frame:input:;
- (id).cxx_construct;
- (id)commit;
- (void)commit;
@end

@implementation FTCinematicTrackingState

+ (id)stateWithTracker:(shared_ptr<ft:(shared_ptr<ft:(id)tracker :Frame>)a4 :CinematicTracker>)a3 frame:input:
{
  ptr = a4.__ptr_;
  cntrl = a3.__cntrl_;
  v7 = a3.__ptr_;
  v8 = a4.__ptr_;
  v9 = objc_alloc_init(FTCinematicTrackingState);
  v10 = v9;
  v12 = *v7;
  v11 = *(v7 + 1);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v9->_tracker.__cntrl_;
  v9->_tracker.__ptr_ = v12;
  v9->_tracker.__cntrl_ = v11;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = *cntrl;
  v14 = *(cntrl + 1);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = v10->_frame.__cntrl_;
  v10->_frame.__ptr_ = v15;
  v10->_frame.__cntrl_ = v14;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  objc_storeStrong(&v10->_input, ptr);
  v10->_commitToken = *(*v7 + 8);
  v17 = [FTCinematicHighPriorityTrackerState alloc];
  v18 = *(v7 + 1);
  v27 = *v7;
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = *(cntrl + 1);
  v25 = *cntrl;
  v26 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = [(FTCinematicHighPriorityTrackerState *)v17 initWithTracker:&v27 frame:&v25];
  highPriorityTrackerState = v10->_highPriorityTrackerState;
  v10->_highPriorityTrackerState = v20;

  v22 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  return v10;
}

- (id)commit
{
  v76 = *MEMORY[0x277D85DE8];
  ptr = self->_tracker.__ptr_;
  std::recursive_mutex::lock((ptr + 80));
  completed = [(FTCinematicHighPriorityTrackerState *)self->_highPriorityTrackerState completed];
  if ((completed & 1) == 0)
  {
    v7 = ft::GetOsLog(completed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [FTCinematicTrackingState commit];
    }

    goto LABEL_54;
  }

  v4 = self->_tracker.__ptr_;
  v5 = *(v4 + 1);
  if (v5 != self->_commitToken)
  {
    v7 = ft::GetOsLog(completed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(FTCinematicTrackingState *)&self->_commitToken commit];
    }

LABEL_54:
    v40 = 0;
    goto LABEL_55;
  }

  *(v4 + 1) = v5 + 1;
  if (*ft::UserDefaults::Get(completed) == 1)
  {
    ft::CinematicTracker::TerminateHighlyOverlappingDetectionlessTrack(self->_tracker.__ptr_);
  }

  ActiveTracks = ft::TrackPool::GetActiveTracks(*(self->_tracker.__ptr_ + 24));
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:(ActiveTracks[1] - *ActiveTracks) >> 4];
  v8 = self->_tracker.__ptr_;
  v10 = *(v8 + 19);
  v9 = *(v8 + 20);
  v72 = v10;
  v73 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  input = [(FTCinematicTrackingState *)self input];
  observations = [input observations];

  v13 = *ActiveTracks;
  v14 = ActiveTracks[1];
  if (*ActiveTracks == v14)
  {
    goto LABEL_58;
  }

  *&v12 = 134217984;
  v62 = v12;
  do
  {
    v15 = *v13;
    v16 = v13[1];
    v70 = *v13;
    v71 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v13;
    }

    v17 = [FTCinematicTrack fromTrack:&v70 isHighPriority:v15 == v72];
    v18 = v71;
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = self->_tracker.__ptr_;
      v20 = *v13;
      v21 = *(v19 + 48);
      if (!*&v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v19 = self->_tracker.__ptr_;
      v20 = *v13;
      v21 = *(v19 + 48);
      if (!*&v21)
      {
        goto LABEL_35;
      }
    }

    v22 = *(v20 + 16);
    v23 = vcnt_s8(v21);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = *(v20 + 16);
      if (v22 >= *&v21)
      {
        v24 = v22 % *&v21;
      }
    }

    else
    {
      v24 = (*&v21 - 1) & v22;
    }

    v25 = *(*(v19 + 5) + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_35:
      if ((*(v20 + 232) & 1) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_36;
    }

    if (v23.u32[0] < 2uLL)
    {
      v27 = *&v21 - 1;
      while (1)
      {
        v29 = v26[1];
        if (v22 == v29)
        {
          if (v26[2] == v22)
          {
            goto LABEL_48;
          }
        }

        else if ((v29 & v27) != v24)
        {
          goto LABEL_35;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
      v28 = v26[1];
      if (v22 == v28)
      {
        break;
      }

      if (v28 >= *&v21)
      {
        v28 %= *&v21;
      }

      if (v28 != v24)
      {
        goto LABEL_35;
      }

LABEL_23:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_35;
      }
    }

    if (v26[2] != v22)
    {
      goto LABEL_23;
    }

LABEL_48:
    time2.value = *(v20 + 16);
    time1.value = &time2;
    time1 = *(std::__hash_table<std::__hash_value_type<long long,CMTime>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,CMTime>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,CMTime>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,CMTime>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(v19 + 5, &time2) + 1);
    [v17 setLastTappedTime:&time1];
    v20 = *v13;
    if ((*(*v13 + 232) & 1) == 0)
    {
LABEL_76:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Track not yet initialized.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_36:
    if (*(v20 + 200))
    {
      *&time1.value = *(v20 + 168);
      v30 = *(v20 + 192);
      time1.epoch = *(v20 + 184);
      v31 = self->_frame.__ptr_;
      v32 = *(v31 + 2);
      *&time2.value = *v31;
      time2.epoch = v32;
      if (!CMTimeCompare(&time1, &time2))
      {
        v33 = [observations count];
        if (v30 >= v33)
        {
          v34 = ft::GetOsLog(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            LODWORD(time1.value) = v62;
            *(&time1.value + 4) = v30;
            _os_log_error_impl(&dword_24BC30000, v34, OS_LOG_TYPE_ERROR, "Internal inconsistency: observation index out of bounds: %zd", &time1, 0xCu);
          }
        }

        else
        {
          v34 = [observations objectAtIndexedSubscript:v30];
          if (objc_opt_respondsToSelector())
          {
            metadata = [v34 metadata];
            [v17 setMetadata:metadata];
          }
        }
      }
    }

    [v17 setIsTapSpawned:{*(*v13 + 8) & 1, v62}];
    [v17 box];
    v80.origin.x = 0.0;
    v80.origin.y = 0.0;
    v80.size.width = 1.0;
    v80.size.height = 1.0;
    v79 = CGRectIntersection(v78, v80);
    x = v79.origin.x;
    y = v79.origin.y;
    width = v79.size.width;
    height = v79.size.height;
    if (!CGRectIsEmpty(v79))
    {
      [v17 setBox:{x, y, width, height}];
      [v7 addObject:v17];
    }

    v13 += 2;
  }

  while (v13 != v14);
LABEL_58:
  v40 = objc_alloc_init(FTCinematicTrackingResult);
  [(FTCinematicTrackingResult *)v40 setTracks:v7];
  v42 = self->_frame.__ptr_;
  v43 = *(v42 + 2);
  *&time1.value = *v42;
  time1.epoch = v43;
  [(FTCinematicTrackingResult *)v40 setSourceFrameTimestamp:&time1];
  v44 = self->_tracker.__ptr_;
  v45 = *(v44 + 1);
  time1.epoch = *(v44 + 4);
  *&time1.value = v45;
  [(FTCinematicTrackingResult *)v40 setMostRecentTapTime:&time1];
  [(FTCinematicTrackingResult *)v40 setDetectorDidRun:*(self->_frame.__ptr_ + 24)];
  input2 = [(FTCinematicTrackingState *)self input];
  tapRequest = [input2 tapRequest];
  v48 = tapRequest == 0;

  if (!v48)
  {
    v49 = objc_alloc_init(FTCinematicTapResponse);
    input3 = [(FTCinematicTrackingState *)self input];
    tapRequest2 = [input3 tapRequest];
    [(FTCinematicTapResponse *)v49 setRequest:tapRequest2];

    [(FTCinematicTrackingResult *)v40 setTapResponse:v49];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = v7;
    v53 = [v52 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v53)
    {
      v54 = *v66;
      while (2)
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v66 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v65 + 1) + 8 * i);
          if (v56)
          {
            [*(*(&v65 + 1) + 8 * i) lastTappedTime];
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v57 = self->_frame.__ptr_;
          v58 = *(v57 + 2);
          *&time2.value = *v57;
          time2.epoch = v58;
          if (!CMTimeCompare(&time1, &time2))
          {
            v59 = v56;
            goto LABEL_72;
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    v59 = 0;
LABEL_72:

    [(FTCinematicTapResponse *)v49 setTappedTrack:v59];
    [(FTCinematicTapResponse *)v49 setWasSuccessful:v59 != 0];
  }

  v60 = v73;
  if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

LABEL_55:

  std::recursive_mutex::unlock((ptr + 80));

  return v40;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

- (void)commit
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *self;
  v4 = *(*a2 + 8);
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_error_impl(&dword_24BC30000, log, OS_LOG_TYPE_ERROR, "Invalid commit token. State: %llu, Tracker: %llu.", &v5, 0x16u);
}

@end