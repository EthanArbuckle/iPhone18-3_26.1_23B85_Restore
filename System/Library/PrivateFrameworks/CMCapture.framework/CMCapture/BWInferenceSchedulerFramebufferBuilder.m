@interface BWInferenceSchedulerFramebufferBuilder
- (BOOL)_validToDeriveFormat:(_BOOL8)result fromFormat:(void *)a2 vendingProvider:(void *)a3;
- (BWInferenceSchedulerFramebufferBuilder)initWithInferenceRequirements:(id)a3 dependencyProvider:(id)a4 formatProvider:(id)a5 processingConfiguration:(id)a6;
- (id)_connectNodesExpectingInputs:(void *)a3 toNodesProvidingOutput:(void *)a4 dependencyProvider:(void *)a5 nodeForExternalRequirement:;
- (id)_newScalingNodesForScalingRequirement:(unsigned int)a3 fencedMedia:(void *)a4 processingConfiguration:;
- (id)newFramebuffer;
- (uint64_t)_addScalingNodesForNodesExpectingInputs:(void *)a3 nodesProvidingOutput:(void *)a4 dependencyProvider:(void *)a5 nodesForExternalRequirements:(void *)a6 fencedMediaKeys:(uint64_t)a7 iterations:(void *)a8 processingConfiguration:;
- (void)_populateJobList:(void *)a3 fromGraphEdges:(uint64_t)a4 withHeadNode:(void *)a5 jobTypes:;
- (void)_prepareToConnectNode:(uint64_t)a1;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerFramebufferBuilder

- (id)newFramebuffer
{
  if (!self->_graph || !self->_prototypeJobList)
  {
    return 0;
  }

  if (self->_didVendFramebuffer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ already returned a framebuffer. Multi-buffering is not yet supported", self), 0}]);
  }

  self->_didVendFramebuffer = 1;
  v3 = [BWInferenceSchedulerFramebuffer alloc];
  graph = self->_graph;
  prototypeJobList = self->_prototypeJobList;

  return [(BWInferenceSchedulerFramebuffer *)v3 initWithGraph:graph jobList:prototypeJobList];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerFramebufferBuilder;
  [(BWInferenceSchedulerFramebufferBuilder *)&v3 dealloc];
}

- (BWInferenceSchedulerFramebufferBuilder)initWithInferenceRequirements:(id)a3 dependencyProvider:(id)a4 formatProvider:(id)a5 processingConfiguration:(id)a6
{
  v112.receiver = self;
  v112.super_class = BWInferenceSchedulerFramebufferBuilder;
  v10 = [(BWInferenceSchedulerFramebufferBuilder *)&v112 init];
  if (v10)
  {
    v64 = a6;
    v12 = [objc_msgSend(a4 "allInputVideoDependencies")];
    v13 = [objc_msgSend(a4 "allOutputVideoDependencies")];
    v10->_directedEdgesByNode = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:v13 + v12];
    v14 = [MEMORY[0x1E696AD18] bw_strongVideoRequirementToStrongObjectsMapTable];
    v15 = [MEMORY[0x1E696AD18] bw_strongVideoRequirementToStrongObjectsMapTable];
    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:1282 capacity:{objc_msgSend(a3, "count")}];
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = [[BWInferenceSchedulerGraphInputNode alloc] initWithVideoPropagatedToStorage:v17];
    v65 = v10;
    [(BWInferenceSchedulerFramebufferBuilder *)v10 _prepareToConnectNode:v18];
    v66 = v16;
    v71 = v18;
    [v16 setObject:1 forKey:v18];
    v75 = a4;
    v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = [a4 consumedVideoAttachedMediaKeys];
    v19 = [obj countByEnumeratingWithState:&v108 objects:v107 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v109;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v109 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v108 + 1) + 8 * i);
          v24 = [a5 inputInferenceVideoFormatForAttachedMediaKey:v23];
          if (!v24)
          {
            v25 = [a5 inputVideoFormatForAttachedMediaKey:v23];
            if (!v25)
            {
              goto LABEL_65;
            }

            [BWInferenceSchedulerFramebufferBuilder initWithInferenceRequirements:v23 dependencyProvider:@"PrimaryFormat" formatProvider:v25 processingConfiguration:&v113];
            v24 = v113;
          }

          v26 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:v23 videoFormat:v24];
          [v17 addObject:v26];
          [v14 setObject:v71 forKey:v26];

          if (([v76 containsObject:v23] & 1) == 0 && objc_msgSend(a5, "intermediateResourceTrackingAllowedForAttachedMediaKey:", v23))
          {
            [v76 addObject:v23];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v108 objects:v107 count:16];
      }

      while (v20);
    }

    v63 = v17;
    v27 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v28 = [a3 countByEnumeratingWithState:&v103 objects:v102 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v104;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v104 != v30)
          {
            objc_enumerationMutation(a3);
          }

          v32 = *(*(&v103 + 1) + 8 * j);
          v33 = [[BWInferenceSchedulerInference alloc] initWithInferenceRequirement:v32];
          [(BWInferenceSchedulerFramebufferBuilder *)v65 _prepareToConnectNode:v33];
          [v66 setObject:2 forKey:v33];
          [v27 setObject:v33 forKey:v32];
        }

        v29 = [a3 countByEnumeratingWithState:&v103 objects:v102 count:16];
      }

      while (v29);
    }

    v101 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v34 = v75;
    v67 = [v75 allInputVideoDependencies];
    v69 = [v67 countByEnumeratingWithState:&v98 objects:v97 count:16];
    if (v69)
    {
      v68 = *v99;
      do
      {
        v35 = 0;
        do
        {
          if (*v99 != v68)
          {
            objc_enumerationMutation(v67);
          }

          obja = v35;
          v36 = *(*(&v98 + 1) + 8 * v35);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v37 = [v34 dependenciesForInputVideoRequirement:v36];
          v38 = [v37 countByEnumeratingWithState:&v93 objects:v92 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v94;
            do
            {
              for (k = 0; k != v39; ++k)
              {
                if (*v94 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = [v27 objectForKey:{objc_msgSend(*(*(&v93 + 1) + 8 * k), "inferenceRequirement")}];
                v43 = [v15 objectForKey:v36];
                if (!v43)
                {
                  v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  [v15 setObject:v43 forKey:v36];
                }

                [v43 addObject:v42];
              }

              v39 = [v37 countByEnumeratingWithState:&v93 objects:v92 count:16];
            }

            while (v39);
          }

          v34 = v75;
          v35 = obja + 1;
        }

        while (obja + 1 != v69);
        v69 = [v67 countByEnumeratingWithState:&v98 objects:v97 count:16];
      }

      while (v69);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v70 = [v34 allOutputVideoDependencies];
    v44 = [v70 countByEnumeratingWithState:&v88 objects:v87 count:16];
    if (v44)
    {
      v45 = v44;
      objb = *v89;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v89 != objb)
          {
            objc_enumerationMutation(v70);
          }

          v47 = *(*(&v88 + 1) + 8 * m);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v48 = [v34 dependenciesForOutputVideoRequirement:v47];
          v49 = [v48 countByEnumeratingWithState:&v83 objects:v82 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v84;
            do
            {
              for (n = 0; n != v50; ++n)
              {
                if (*v84 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                [v14 setObject:objc_msgSend(v27 forKey:{"objectForKey:", objc_msgSend(*(*(&v83 + 1) + 8 * n), "inferenceRequirement")), v47}];
              }

              v50 = [v48 countByEnumeratingWithState:&v83 objects:v82 count:16];
            }

            while (v50);
          }

          v34 = v75;
        }

        v45 = [v70 countByEnumeratingWithState:&v88 objects:v87 count:16];
      }

      while (v45);
    }

    v53 = [(BWInferenceSchedulerFramebufferBuilder *)v65 _connectNodesExpectingInputs:v15 toNodesProvidingOutput:v14 dependencyProvider:v34 nodeForExternalRequirement:v27];
    v54 = -[BWInferenceSchedulerFramebufferBuilder _addScalingNodesForNodesExpectingInputs:nodesProvidingOutput:dependencyProvider:nodesForExternalRequirements:fencedMediaKeys:iterations:processingConfiguration:](v65, v53, [v14 copy], v34, v27, v76, 15, v64);
    v17 = v63;
    if (v54)
    {
      v55 = v54;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      directedEdgesByNode = v65->_directedEdgesByNode;
      v57 = [(NSMapTable *)directedEdgesByNode countByEnumeratingWithState:&v78 objects:v77 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v79;
        do
        {
          for (ii = 0; ii != v58; ++ii)
          {
            if (*v79 != v59)
            {
              objc_enumerationMutation(directedEdgesByNode);
            }

            v61 = *(*(&v78 + 1) + 8 * ii);
            if (![v66 objectForKey:v61])
            {
              [v66 setObject:3 forKey:v61];
            }
          }

          v58 = [(NSMapTable *)directedEdgesByNode countByEnumeratingWithState:&v78 objects:v77 count:16];
        }

        while (v58);
      }

      v17 = v63;
      if (![v55 count])
      {
        v65->_graph = [[BWInferenceSchedulerGraph alloc] initWithHeadNode:v71 directedEdges:v65->_directedEdgesByNode];
        v62 = [[BWInferenceSchedulerJobList alloc] initWithCapacity:v65->_jobCount];
        v65->_prototypeJobList = v62;
        [(BWInferenceSchedulerFramebufferBuilder *)v65 _populateJobList:v62 fromGraphEdges:v65->_directedEdgesByNode withHeadNode:v71 jobTypes:v66];
      }
    }

LABEL_65:

    return v65;
  }

  return v10;
}

- (uint64_t)_addScalingNodesForNodesExpectingInputs:(void *)a3 nodesProvidingOutput:(void *)a4 dependencyProvider:(void *)a5 nodesForExternalRequirements:(void *)a6 fencedMediaKeys:(uint64_t)a7 iterations:(void *)a8 processingConfiguration:
{
  if (!a1)
  {
    return 0;
  }

  v10 = a2;
  if ([a2 count])
  {
    if (!a7)
    {
      return 0;
    }

    v77 = a1;
    v62 = a7;
    v63 = a5;
    v13 = [v10 copy];
    obj = objc_alloc_init(MEMORY[0x1E695DF90]);
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v14 = [v10 countByEnumeratingWithState:&v102 objects:v101 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v103;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v103 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v102 + 1) + 8 * i);
          v19 = [v18 attachedMediaKey];
          v20 = [obj objectForKeyedSubscript:v19];
          if (!v20)
          {
            goto LABEL_17;
          }

          v21 = [v20 videoFormat];
          v22 = [v18 videoFormat];
          v23 = [v22 width];
          if (v23 > [v21 width])
          {
            [obj setObject:v18 forKeyedSubscript:v19];
          }

          if (([a8 scalingStrategy] & 8) != 0)
          {
            v24 = [v22 width];
            if (v24 == [v21 width] && objc_msgSend(objc_msgSend(v22, "underlyingVideoFormat"), "pixelFormat") == 1111970369)
            {
LABEL_17:
              [obj setObject:v18 forKeyedSubscript:v19];
            }
          }
        }

        v15 = [v10 countByEnumeratingWithState:&v102 objects:v101 count:16];
      }

      while (v15);
    }

    v25 = [a3 copy];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v26 = v77;
    v68 = [obj countByEnumeratingWithState:&v97 objects:v96 count:16];
    if (!v68)
    {
LABEL_71:
      v61 = [(BWInferenceSchedulerFramebufferBuilder *)v26 _connectNodesExpectingInputs:v13 toNodesProvidingOutput:a3 dependencyProvider:a4 nodeForExternalRequirement:v63];

      return [(BWInferenceSchedulerFramebufferBuilder *)v26 _addScalingNodesForNodesExpectingInputs:v61 nodesProvidingOutput:a3 dependencyProvider:a4 nodesForExternalRequirements:v63 fencedMediaKeys:a6 iterations:v62 - 1 processingConfiguration:a8];
    }

    v67 = *v98;
    v76 = v25;
LABEL_22:
    v27 = 0;
    while (1)
    {
      if (*v98 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v97 + 1) + 8 * v27);
      v29 = [obj objectForKeyedSubscript:v28];
      v30 = [v29 videoFormat];
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v31 = [v25 countByEnumeratingWithState:&v92 objects:v91 count:16];
      if (v31)
      {
        break;
      }

LABEL_50:
      if (++v27 == v68)
      {
        v60 = [obj countByEnumeratingWithState:&v97 objects:v96 count:16];
        v68 = v60;
        if (!v60)
        {
          goto LABEL_71;
        }

        goto LABEL_22;
      }
    }

    v32 = v31;
    v78 = v30;
    v69 = v27;
    v70 = v29;
    v33 = 0;
    v34 = *v93;
LABEL_27:
    v35 = 0;
    while (1)
    {
      v36 = v33;
      if (*v93 != v34)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v92 + 1) + 8 * v35);
      if ([objc_msgSend(v33 "attachedMediaKey")] && (v37 = objc_msgSend(v33, "videoFormat"), objc_msgSend(v25, "objectForKey:", v33), -[BWInferenceSchedulerFramebufferBuilder _validToDeriveFormat:fromFormat:vendingProvider:](v26, v78, v37)))
      {
        if (v36)
        {
          v38 = [v36 videoFormat];
          v39 = [v37 width];
          if (v39 >= [v38 width])
          {
            v40 = [v37 width];
            if (v40 != [v38 width])
            {
              goto LABEL_42;
            }

            v74 = v38;
            v41 = [v38 includesInvalidContent];
            v25 = v76;
            if (v41 != [v78 includesInvalidContent])
            {
              v42 = [v37 includesInvalidContent];
              v43 = v42 == [v78 includesInvalidContent];
              v26 = v77;
              if (v43)
              {
                goto LABEL_32;
              }
            }

            v44 = [v74 includesInvalidContent];
            if (v44 == [v78 includesInvalidContent] && (v45 = objc_msgSend(v74, "pixelFormat"), v45 != objc_msgSend(v78, "pixelFormat")))
            {
              v46 = [v37 pixelFormat];
              if (v46 != [v78 pixelFormat])
              {
                v33 = v36;
              }
            }

            else
            {
LABEL_42:
              v33 = v36;
            }
          }

          v25 = v76;
          v26 = v77;
        }
      }

      else
      {
        v33 = v36;
      }

LABEL_32:
      if (v32 == ++v35)
      {
        v47 = [v25 countByEnumeratingWithState:&v92 objects:v91 count:16];
        v32 = v47;
        if (!v47)
        {
          v27 = v69;
          if (v70 && v33)
          {
            if ([v70 isSatisfiedByRequirement:v33])
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Creating scaling nodes to convert between two requirements that already satisfy one another: %@ and %@", v70, v33), 0}]);
            }

            v48 = [BWInferenceScalingRequirement alloc];
            v90 = v70;
            v49 = -[BWInferenceScalingRequirement initWithInputVideoRequirement:requestedOutputVideoRequirements:intermediatePixelBufferCompressionType:processingConfiguration:](v48, "initWithInputVideoRequirement:requestedOutputVideoRequirements:intermediatePixelBufferCompressionType:processingConfiguration:", v33, [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1], objc_msgSend(a4, "supportedPixelBufferCompressionType"), a8);
            v50 = -[BWInferenceSchedulerFramebufferBuilder _newScalingNodesForScalingRequirement:fencedMedia:processingConfiguration:](v26, v49, [a6 containsObject:{objc_msgSend(v33, "attachedMediaKey")}], a8);

            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v71 = v50;
            v79 = [v50 countByEnumeratingWithState:&v86 objects:v85 count:16];
            if (v79)
            {
              v75 = *v87;
              do
              {
                for (j = 0; j != v79; ++j)
                {
                  if (*v87 != v75)
                  {
                    objc_enumerationMutation(v71);
                  }

                  v52 = *(*(&v86 + 1) + 8 * j);
                  [(BWInferenceSchedulerFramebufferBuilder *)v77 _prepareToConnectNode:v52];
                  [a3 setObject:v52 forKey:{objc_msgSend(objc_msgSend(v52, "outputRequirements"), "firstObject")}];
                  v83 = 0u;
                  v84 = 0u;
                  v81 = 0u;
                  v82 = 0u;
                  v53 = [v52 inputVideoRequirements];
                  v54 = [v53 countByEnumeratingWithState:&v81 objects:v80 count:16];
                  if (v54)
                  {
                    v55 = v54;
                    v56 = *v82;
                    do
                    {
                      for (k = 0; k != v55; ++k)
                      {
                        if (*v82 != v56)
                        {
                          objc_enumerationMutation(v53);
                        }

                        v58 = *(*(&v81 + 1) + 8 * k);
                        v59 = [v13 objectForKey:v58];
                        if (!v59)
                        {
                          v59 = objc_opt_new();
                        }

                        [v59 addObject:v52];
                        [v13 setObject:v59 forKey:v58];
                      }

                      v55 = [v53 countByEnumeratingWithState:&v81 objects:v80 count:16];
                    }

                    while (v55);
                  }
                }

                v79 = [v71 countByEnumeratingWithState:&v86 objects:v85 count:16];
              }

              while (v79);
            }

            v26 = v77;
            v27 = v69;
          }

          goto LABEL_50;
        }

        goto LABEL_27;
      }
    }
  }

  return v10;
}

- (void)_prepareToConnectNode:(uint64_t)a1
{
  if (a1)
  {
    ++*(a1 + 24);
    v4 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:1024];
    [v4 setSizeFunction:BWInferenceSchedulerGraphDirectedEdgeSize];
    [v4 setRelinquishFunction:BWInferenceSchedulerGraphDirectedEdgeRelinquish];
    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithPointerFunctions:v4];
    [*(a1 + 32) setObject:v5 forKey:a2];
  }
}

- (id)_connectNodesExpectingInputs:(void *)a3 toNodesProvidingOutput:(void *)a4 dependencyProvider:(void *)a5 nodeForExternalRequirement:
{
  v59 = a5;
  v51 = result;
  v52 = a4;
  if (result)
  {
    v6 = a2;
    v53 = [a2 copy];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v54 = OUTLINED_FUNCTION_1_18(v53, v7, &v83, v82);
    if (v54)
    {
      v47 = *v84;
      v49 = v6;
      v50 = a3;
      do
      {
        v8 = 0;
        do
        {
          if (*v84 != v47)
          {
            objc_enumerationMutation(a3);
          }

          v55 = v8;
          v9 = *(*(&v83 + 1) + 8 * v8);
          v10 = [a3 objectForKey:{v9, v47}];
          v11 = [objc_msgSend(v6 objectForKey:{v9), "allObjects"}];
          v12 = [*(v51 + 32) objectForKey:v10];
          v13 = [v52 dependenciesForInputVideoRequirement:v9];
          v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          obj = v13;
          v16 = OUTLINED_FUNCTION_1_18(v14, v15, &v78, v77);
          if (v16)
          {
            v24 = v16;
            v25 = *v79;
            do
            {
              v26 = 0;
              do
              {
                if (*v79 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v27 = *(*(&v78 + 1) + 8 * v26);
                v28 = [v27 dataRequirement];
                v29 = [v59 objectForKey:{objc_msgSend(v27, "inferenceRequirement")}];
                if ([v11 containsObject:v29])
                {
                  v30 = OUTLINED_FUNCTION_0_13();
                  *v30 = v9;
                  v30[1] = v28;
                  v30[2] = v29;
                  [v12 addPointer:v30];
                  [v14 addObject:v29];
                }

                ++v26;
              }

              while (v24 != v26);
              v16 = [obj countByEnumeratingWithState:&v78 objects:v77 count:16];
              v24 = v16;
            }

            while (v16);
          }

          v31 = OUTLINED_FUNCTION_2_14(v16, v17, v18, v19, v20, v21, v22, v23, v48, v49, v50, v51, v52, v53, v54, v55, obj, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, 0);
          if (v31)
          {
            v32 = v31;
            v33 = MEMORY[0];
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (MEMORY[0] != v33)
                {
                  objc_enumerationMutation(v11);
                }

                v35 = *(8 * i);
                v36 = [v14 containsObject:v35];
                if ((v36 & 1) == 0)
                {
                  v44 = OUTLINED_FUNCTION_0_13();
                  *v44 = v9;
                  v44[1] = v9;
                  v44[2] = v35;
                  v36 = [v12 addPointer:v44];
                }
              }

              v32 = OUTLINED_FUNCTION_2_14(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49, v50, v51, v52, v53, v54, v56, obja, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
            }

            while (v32);
          }

          v45 = [v53 removeObjectForKey:v9];
          v8 = v56 + 1;
          v6 = v49;
          a3 = v50;
        }

        while (v56 + 1 != v54);
        v54 = OUTLINED_FUNCTION_1_18(v45, v46, &v83, v82);
      }

      while (v54);
    }

    return v53;
  }

  return result;
}

- (void)_populateJobList:(void *)a3 fromGraphEdges:(uint64_t)a4 withHeadNode:(void *)a5 jobTypes:
{
  v55 = a2;
  if (a1)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD18]);
    v7 = OUTLINED_FUNCTION_4_15([a3 count]);
    v8 = objc_alloc(MEMORY[0x1E696AD18]);
    v9 = OUTLINED_FUNCTION_4_15([a3 count]);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v63 = a3;
    obj = OUTLINED_FUNCTION_3_5();
    if (obj)
    {
      v61 = *v94;
      do
      {
        v10 = 0;
        do
        {
          if (*v94 != v61)
          {
            objc_enumerationMutation(a3);
          }

          v66 = v10;
          v11 = *(*(&v93 + 1) + 8 * v10);
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v12 = [a3 objectForKey:{v11, v55}];
          v13 = [v12 countByEnumeratingWithState:&v89 objects:v88 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v90;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v90 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v89 + 1) + 8 * i);
                v18 = *(v17 + 16);
                v19 = [v7 objectForKey:v18];
                if (!v19)
                {
                  v19 = [MEMORY[0x1E695DFA8] set];
                  [v7 setObject:v19 forKey:v18];
                }

                [v19 addObject:v11];
                v20 = [v9 objectForKey:v18];
                if (!v20)
                {
                  v20 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:258];
                  [v9 setObject:v20 forKey:v18];
                }

                [v20 addPointer:v17 + 24];
              }

              v14 = [v12 countByEnumeratingWithState:&v89 objects:v88 count:16];
            }

            while (v14);
          }

          v10 = v66 + 1;
          a3 = v63;
        }

        while ((v66 + 1) != obj);
        obj = OUTLINED_FUNCTION_3_5();
      }

      while (obj);
    }

    v67 = [MEMORY[0x1E696AB50] set];
    v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(a3, "count")}];
    [v21 addObject:a4];
    if ([v21 count])
    {
      v22 = 0;
      obja = v21;
      do
      {
        v58 = v22;
        if ([v21 count] < 2)
        {
          v25 = [v21 anyObject];
        }

        else
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v62 = OUTLINED_FUNCTION_1_18(v23, v24, &v84, v83);
          v25 = 0;
          if (v62)
          {
            v60 = *v85;
            v26 = 0.0;
            do
            {
              for (j = 0; j != v62; ++j)
              {
                if (*v85 != v60)
                {
                  objc_enumerationMutation(obja);
                }

                v28 = *(*(&v84 + 1) + 8 * j);
                v29 = [a3 objectForKey:v28];
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v30 = [v29 countByEnumeratingWithState:&v79 objects:v78 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v80;
                  do
                  {
                    for (k = 0; k != v31; ++k)
                    {
                      if (*v80 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      [v23 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "objectForKey:", *(*(*(&v79 + 1) + 8 * k) + 16)), "allObjects")}];
                    }

                    v31 = [v29 countByEnumeratingWithState:&v79 objects:v78 count:16];
                  }

                  while (v31);
                }

                v34 = [v23 count];
                v35 = [v29 count];
                if ((v34 / v35) < v26 || v25 == 0)
                {
                  v26 = v34 / v35;
                  v25 = v28;
                }

                v37 = [v23 removeAllObjects];
                a3 = v63;
              }

              v21 = obja;
              v62 = OUTLINED_FUNCTION_1_18(v37, v38, &v84, v83);
            }

            while (v62);
          }
        }

        [v21 removeObject:v25];
        v39 = [v56 jobAtIndex:v58];
        *v39 = v25;
        *(v39 + 21) = [v67 countForObject:v25];
        *(v39 + 20) = [a5 objectForKey:v25];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v40 = [v9 objectForKey:v25];
        v41 = [v40 countByEnumeratingWithState:&v74 objects:v73 count:16];
        if (v41)
        {
          v43 = v41;
          v44 = *v75;
          do
          {
            v45 = 0;
            do
            {
              if (*v75 != v44)
              {
                objc_enumerationMutation(v40);
              }

              **(*(&v74 + 1) + 8 * v45++) = v58;
            }

            while (v43 != v45);
            v41 = OUTLINED_FUNCTION_1_18(v41, v42, &v74, v73);
            v43 = v41;
          }

          while (v41);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v46 = [a3 objectForKey:v25];
        v47 = [v46 countByEnumeratingWithState:&v69 objects:v68 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v70;
          do
          {
            for (m = 0; m != v48; ++m)
            {
              if (*v70 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(*(&v69 + 1) + 8 * m) + 16);
              [v67 addObject:v51];
              v52 = [v7 objectForKey:v51];
              [v52 removeObject:v25];
              v53 = [v52 count];
              if (!v53)
              {
                v53 = [obja addObject:v51];
              }
            }

            v48 = OUTLINED_FUNCTION_1_18(v53, v54, &v69, v68);
          }

          while (v48);
        }

        v22 = v58 + 1;
        v21 = obja;
      }

      while ([obja count]);
    }
  }
}

- (BOOL)_validToDeriveFormat:(_BOOL8)result fromFormat:(void *)a2 vendingProvider:(void *)a3
{
  if (result)
  {
    v5 = [a3 width];
    if (v5 >= [a2 width] && (v6 = objc_msgSend(a3, "height"), v6 >= objc_msgSend(a2, "height")) && ((v7 = objc_msgSend(a2, "includesInvalidContent"), v7 == objc_msgSend(a3, "includesInvalidContent")) || (objc_msgSend(a2, "includesInvalidContent") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && (v8 = objc_msgSend(a3, "videoContentMode"), v8 <= objc_msgSend(a2, "videoContentMode")))
    {
      if ([objc_msgSend(a3 "cropDescriptor")])
      {
        v9 = [objc_msgSend(a3 "cropDescriptor")];
        return v9 == [objc_msgSend(a2 "cropDescriptor")];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_newScalingNodesForScalingRequirement:(unsigned int)a3 fencedMedia:(void *)a4 processingConfiguration:
{
  if (!a1)
  {
    return 0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [a2 orderedVideoRequirements];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (!--v10)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v12 = [objc_msgSend(a2 "orderedVideoRequirements")];
  if ([v12 count] >= 2)
  {
    v13 = 0;
    do
    {
      v14 = [v12 firstObject];
      [v12 removeObjectAtIndex:0];
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v15 addObject:{objc_msgSend(v12, "firstObject")}];
      if ([v12 count] >= 2)
      {
        do
        {
          if (![objc_msgSend(v12 objectAtIndex:{1), "isSatisfiedByRequirement:", objc_msgSend(v15, "lastObject")}])
          {
            break;
          }

          [v12 removeObjectAtIndex:0];
          [v15 addObject:{objc_msgSend(v12, "firstObject")}];
        }

        while ([v12 count] > 1);
      }

      v16 = objc_alloc_init(BWInferenceScalerConfiguration);
      [(BWInferenceScalerConfiguration *)v16 setOptions:a3];
      if (a4)
      {
        v17 = [a4 filterType];
      }

      else
      {
        v17 = 3;
      }

      [(BWInferenceScalerConfiguration *)v16 setFilterType:v17];
      v18 = [[BWInferenceSchedulerScaler alloc] initWithInputRequirement:v14 derivedFromRequirement:v13 outputRequirements:v15 scalerConfiguration:v16];

      [v7 addObject:v18];
      v13 = v14;
    }

    while ([v12 count] > 1);
  }

  return v7;
}

- (BWInferenceVideoFormat)initWithInferenceRequirements:(void *)a1 dependencyProvider:(uint64_t)a2 formatProvider:(uint64_t)a3 processingConfiguration:(BWInferenceVideoFormat *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, BWInferenceVideoFormat **a4)
{
  WORD2(v6) = 0;
  LODWORD(v6) = 0;
  result = -[BWInferenceVideoFormat initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:]([BWInferenceVideoFormat alloc], "initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:", a3, 0, 0, [a1 isEqualToString:a2], 0, 0, v6);
  *a4 = result;
  return result;
}

@end